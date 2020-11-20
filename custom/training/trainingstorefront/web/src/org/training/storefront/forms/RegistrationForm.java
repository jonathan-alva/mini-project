package org.training.storefront.forms;

import de.hybris.platform.acceleratorstorefrontcommons.forms.RegisterForm;

public class RegistrationForm extends RegisterForm {
    private String Id;

    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }
}
