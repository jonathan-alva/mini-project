/*
 * Copyright (c) 2019 SAP SE or an SAP affiliate company. All rights reserved.
 */
package org.training.facades.populators;

import de.hybris.platform.commercefacades.product.data.ProductData;
import de.hybris.platform.commercefacades.search.converters.populator.SearchResultProductPopulator;
import de.hybris.platform.commerceservices.search.resultdata.SearchResultValueData;
import de.hybris.platform.servicelayer.dto.converter.ConversionException;


public class TrainingSearchResultProductPopulator extends SearchResultProductPopulator {
    @Override
    public void populate(final SearchResultValueData source, final ProductData target) throws ConversionException {
        target.setSize(this.<String>getValue(source, "size"));
        target.setBaseProduct(this.<String>getValue(source, "baseProduct"));
        target.setDescription(this.<String>getValue(source, "description"));
    }
}
