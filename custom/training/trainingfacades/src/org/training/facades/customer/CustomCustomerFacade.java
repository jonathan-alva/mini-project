package org.training.facades.customer;

import de.hybris.platform.commercefacades.customer.CustomerFacade;
import de.hybris.platform.commercefacades.user.data.RegisterData;
import de.hybris.platform.commerceservices.customer.DuplicateUidException;
import de.hybris.platform.servicelayer.exceptions.UnknownIdentifierException;

public interface CustomCustomerFacade extends CustomerFacade {

    void register(RegisterData registerData) throws DuplicateUidException, UnknownIdentifierException, IllegalArgumentException;

}
