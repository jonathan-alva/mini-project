/*
 * Copyright (c) 2019 SAP SE or an SAP affiliate company. All rights reserved.
 */
package org.training.storefront.controllers.pages;

import de.hybris.platform.acceleratorstorefrontcommons.constants.WebConstants;
import de.hybris.platform.acceleratorstorefrontcommons.controllers.pages.AbstractPageController;
import de.hybris.platform.acceleratorstorefrontcommons.controllers.util.GlobalMessages;
import de.hybris.platform.cms2.exceptions.CMSItemNotFoundException;
import de.hybris.platform.cms2.model.pages.AbstractPageModel;
import de.hybris.platform.cms2.model.pages.ContentPageModel;

import de.hybris.platform.commercefacades.product.data.ProductData;
import de.hybris.platform.core.model.product.ProductModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.training.core.data.beans.TestimonyData;
import org.training.core.model.TrainingTestimonyModel;
import org.training.facades.product.impl.DefaultTrainingProductFacade;
import org.training.facades.testimony.Impl.DefaultTrainingTestimonyFacade;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


/**
 * Controller for home page
 */
@Controller
@RequestMapping("/")
public class HomePageController extends AbstractPageController {

    @Resource(name = "trainingProductFacade")
    private DefaultTrainingProductFacade productFacade;

    @Resource(name = "defaultTrainingTestimonyFacade")
    private DefaultTrainingTestimonyFacade testimonyFacade;

    private static final String LOGOUT = "logout";
    private static final String ACCOUNT_CONFIRMATION_SIGNOUT_TITLE = "account.confirmation.signout.title";
    private static final String ACCOUNT_CONFIRMATION_CLOSE_TITLE = "account.confirmation.close.title";

    @RequestMapping(method = RequestMethod.GET)
    public String home(@RequestParam(value = WebConstants.CLOSE_ACCOUNT, defaultValue = "false") final boolean closeAcc,
                       @RequestParam(value = LOGOUT, defaultValue = "false") final boolean logout, final Model model,
                       final RedirectAttributes redirectModel) throws CMSItemNotFoundException {
        if (logout) {
            String message = ACCOUNT_CONFIRMATION_SIGNOUT_TITLE;
            if (closeAcc) {
                message = ACCOUNT_CONFIRMATION_CLOSE_TITLE;
            }
            GlobalMessages.addFlashMessage(redirectModel, GlobalMessages.INFO_MESSAGES_HOLDER, message);
            return REDIRECT_PREFIX + ROOT;
        }
        final ContentPageModel contentPage = getContentPageForLabelOrId(null);
        storeCmsPageInModel(model, contentPage);
        setUpMetaDataForContentPage(model, contentPage);
        updatePageTitle(model, contentPage);

        List<ProductData> productBedDataList = productFacade.getSomeBedsProductData();
        model.addAttribute("productBedDataList", productBedDataList);

        List<TestimonyData> testimonyModels = testimonyFacade.getAllTestimonyModels();
        List<TestimonyData> selected3TestimonyData = new ArrayList<>();
        int testimonySize = testimonyModels.size();
        if (testimonySize > 3) {
            selected3TestimonyData.add(testimonyModels.get(0));
            selected3TestimonyData.add(testimonyModels.get(1));
            selected3TestimonyData.add(testimonyModels.get(2));
        } else {
            for (int i = 0; i < testimonySize; i++) {
                selected3TestimonyData.add(testimonyModels.get(i));
            }
        }
        model.addAttribute("testimonyList", selected3TestimonyData);

        return getViewForPage(model);
    }

    protected void updatePageTitle(final Model model, final AbstractPageModel cmsPage) {
        storeContentPageTitleInModel(model, getPageTitleResolver().resolveHomePageTitle(cmsPage.getTitle()));
    }
}
