/*
 * Copyright (c) 2019 SAP SE or an SAP affiliate company. All rights reserved.
 */
package org.training.storefront.controllers.pages;

import de.hybris.platform.acceleratorstorefrontcommons.constants.WebConstants;
import de.hybris.platform.acceleratorstorefrontcommons.controllers.util.GlobalMessages;
import de.hybris.platform.acceleratorstorefrontcommons.forms.ConsentForm;
import de.hybris.platform.acceleratorstorefrontcommons.forms.GuestForm;
import de.hybris.platform.acceleratorstorefrontcommons.forms.LoginForm;
import de.hybris.platform.cms2.model.pages.ContentPageModel;
import org.springframework.validation.Validator;
import org.training.storefront.forms.RegisterForm;
import de.hybris.platform.cms2.exceptions.CMSItemNotFoundException;
import de.hybris.platform.commercefacades.consent.data.AnonymousConsentData;
import de.hybris.platform.commercefacades.user.data.RegisterData;
import de.hybris.platform.commerceservices.customer.DuplicateUidException;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.fasterxml.jackson.databind.ObjectMapper;

import static de.hybris.platform.commercefacades.constants.CommerceFacadesConstants.CONSENT_GIVEN;


public abstract class AbstractRegisterPageController extends de.hybris.platform.acceleratorstorefrontcommons.controllers.pages.AbstractRegisterPageController
{
    protected static final String CHECKOUT_ORDER_CONFIRMATION_CMS_PAGE_LABEL = "orderConfirmation";

    private static final Logger LOGGER = Logger.getLogger(AbstractRegisterPageController.class);

    private static final String FORM_GLOBAL_ERROR = "form.global.error";

    private static final String CONSENT_FORM_GLOBAL_ERROR = "consent.form.global.error";

    @Resource(name = "CustomRegistrationValidator")
    private Validator customRegistrationValidator;

    protected Validator getRegistrationValidator()
    {
        return customRegistrationValidator;
    }

    protected String processRegisterUserRequest(final String referer, final RegisterForm form, final BindingResult bindingResult,
                                                final Model model, final HttpServletRequest request, final HttpServletResponse response,
                                                final RedirectAttributes redirectModel) throws CMSItemNotFoundException // NOSONAR
    {
        if (bindingResult.hasErrors())
        {
            form.setTermsCheck(false);
            model.addAttribute(form);
            model.addAttribute(new LoginForm());
            model.addAttribute(new GuestForm());
            GlobalMessages.addErrorMessage(model, FORM_GLOBAL_ERROR);
            return handleRegistrationError(model);
        }

        final RegisterData data = new RegisterData();
        data.setFirstName(form.getFirstName());
        data.setLastName(form.getLastName());
        data.setLogin(form.getEmail());
        data.setId(form.getId());
        data.setPassword(form.getPwd());
        data.setTitleCode(form.getTitleCode());
        try
        {
            getCustomerFacade().register(data);
            getAutoLoginStrategy().login(form.getEmail().toLowerCase(), form.getPwd(), request, response);
            GlobalMessages.addFlashMessage(redirectModel, GlobalMessages.CONF_MESSAGES_HOLDER,
                    "registration.confirmation.message.title");

        }
        catch (final DuplicateUidException e)
        {
            LOGGER.debug("registration failed.");
            form.setTermsCheck(false);
            model.addAttribute(form);
            model.addAttribute(new LoginForm());
            model.addAttribute(new GuestForm());
            bindingResult.rejectValue("email", "registration.error.account.exists.title");
            GlobalMessages.addErrorMessage(model, FORM_GLOBAL_ERROR);
            return handleRegistrationError(model);
        }

        // Consent form data
        try
        {
            final ConsentForm consentForm = form.getConsentForm();
            if (consentForm != null && consentForm.getConsentGiven())
            {
                getConsentFacade().giveConsent(consentForm.getConsentTemplateId(), consentForm.getConsentTemplateVersion());
            }
        }
        catch (final Exception e)
        {
            LOGGER.error("Error occurred while creating consents during registration", e);
            GlobalMessages.addFlashMessage(redirectModel, GlobalMessages.ERROR_MESSAGES_HOLDER, CONSENT_FORM_GLOBAL_ERROR);
        }

        // save anonymous-consent cookies as ConsentData
        final Cookie cookie = WebUtils.getCookie(request, WebConstants.ANONYMOUS_CONSENT_COOKIE);
        if (cookie != null)
        {
            try
            {
                final ObjectMapper mapper = new ObjectMapper();
                final List<AnonymousConsentData> anonymousConsentDataList = Arrays.asList(mapper.readValue(
                        URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8.displayName()), AnonymousConsentData[].class));
                anonymousConsentDataList.stream().filter(consentData -> CONSENT_GIVEN.equals(consentData.getConsentState()))
                        .forEach(consentData -> consentFacade.giveConsent(consentData.getTemplateCode(),
                                Integer.valueOf(consentData.getTemplateVersion())));
            }
            catch (final UnsupportedEncodingException e)
            {
                LOGGER.error(String.format("Cookie Data could not be decoded : %s", cookie.getValue()), e);
            }
            catch (final IOException e)
            {
                LOGGER.error("Cookie Data could not be mapped into the Object", e);
            }
            catch (final Exception e)
            {
                LOGGER.error("Error occurred while creating Anonymous cookie consents", e);
            }
        }

        customerConsentDataStrategy.populateCustomerConsentDataInSession();

        return REDIRECT_PREFIX + getSuccessRedirect(request, response);
    }

    protected String handleRegistrationError(final Model model) throws CMSItemNotFoundException
    {
        storeCmsPageInModel(model, getCmsPage());
        setUpMetaDataForContentPage(model, (ContentPageModel) getCmsPage());
        addRegistrationConsentDataToModel(model);
        return getView();
    }

}