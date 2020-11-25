package org.training.storefront.forms.validation;

import org.training.storefront.forms.UpdateProfileForm;
import de.hybris.platform.acceleratorstorefrontcommons.forms.validation.ProfileValidator;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component("CustomProfileValidator")
public class CustomProfileValidator extends ProfileValidator implements Validator {

    @Override
    public void validate(Object object, Errors errors) {
        final UpdateProfileForm profileForm = (UpdateProfileForm) object;
        final String title = profileForm.getTitleCode();
        final String firstName = profileForm.getFirstName();
        final String lastName = profileForm.getLastName();
        final String id = profileForm.getId();

        if (StringUtils.isNotEmpty(title) && StringUtils.length(title) > 255)
        {
            errors.rejectValue("titleCode", "profile.title.invalid");
        }

        if (StringUtils.isBlank(firstName))
        {
            errors.rejectValue("firstName", "profile.firstName.invalid");
        }
        else if (StringUtils.length(firstName) > 255)
        {
            errors.rejectValue("firstName", "profile.firstName.invalid");
        }

        if (StringUtils.isBlank(lastName))
        {
            errors.rejectValue("lastName", "profile.lastName.invalid");
        }
        else if (StringUtils.length(lastName) > 255)
        {
            errors.rejectValue("lastName", "profile.lastName.invalid");
        }

        if(StringUtils.isBlank(id)){
            errors.rejectValue("id","profile.id.invalid");
        }else if(id.matches("[0-9]+") && StringUtils.length(id)!=16){
            errors.rejectValue("id","profile.id.invalid");
        }
    }
}
