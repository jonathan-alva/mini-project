package org.training.storefront.forms;

public class UpdateProfileForm extends de.hybris.platform.acceleratorstorefrontcommons.forms.UpdateProfileForm {

    private String titleCode;
    private String firstName;
    private String lastName;
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    /**
     * @return the titleCode
     */
    public String getTitleCode()
    {
        return titleCode;
    }

    /**
     * @param titleCode
     *           the titleCode to set
     */
    public void setTitleCode(final String titleCode)
    {
        this.titleCode = titleCode;
    }

    /**
     * @return the firstName
     */
    public String getFirstName()
    {
        return firstName;
    }

    /**
     * @param firstName
     *           the firstName to set
     */
    public void setFirstName(final String firstName)
    {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName()
    {
        return lastName;
    }


    /**
     * @param lastName
     *           the lastName to set
     */
    public void setLastName(final String lastName)
    {
        this.lastName = lastName;
    }
}
