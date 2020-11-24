package org.training.storefront.forms.validation;

import de.hybris.platform.acceleratorstorefrontcommons.forms.validation.RegistrationValidator;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.training.storefront.forms.RegisterForm;

@Component("CustomRegistrationValidator")
public class CustomRegistrationValidator extends RegistrationValidator implements Validator {

    @Override
    public void validate(Object object, Errors errors) {
        final RegisterForm registerForm = (RegisterForm) object;
        final String titleCode = registerForm.getTitleCode();
        final String firstName = registerForm.getFirstName();
        final String lastName = registerForm.getLastName();
        final String email = registerForm.getEmail();
        final String pwd = registerForm.getPwd();
        final String checkPwd = registerForm.getCheckPwd();
        final boolean termsCheck = registerForm.isTermsCheck();
        final String id = registerForm.getId();

        validateTitleCode(errors, titleCode);
        validateName(errors, firstName, "firstName", "register.firstName.invalid");
        validateName(errors, lastName, "lastName", "register.lastName.invalid");

        validateId(errors,id,"id","register.id.invalid");

        if (StringUtils.length(firstName) + StringUtils.length(lastName) > 255)
        {
            errors.rejectValue("lastName", "register.name.invalid");
            errors.rejectValue("firstName", "register.name.invalid");
        }

        validateEmail(errors, email);
        validatePassword(errors, pwd);
        comparePasswords(errors, pwd, checkPwd);
        validateTermsAndConditions(errors, termsCheck);
    }

    public void validateId(final Errors errors, final String id, final String propertyName, final String property){
        if(StringUtils.isBlank(id)){
            errors.rejectValue(propertyName,property);
        }else if (id.matches("[0-9]+") && StringUtils.length(id)>16){
            errors.rejectValue(propertyName,property);
        }
    }
}
