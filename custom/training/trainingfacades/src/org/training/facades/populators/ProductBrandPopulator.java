/*
 * Copyright (c) 2019 SAP SE or an SAP affiliate company. All rights reserved.
 */
package org.training.facades.populators;

import de.hybris.platform.commercefacades.product.data.ProductData;
import de.hybris.platform.converters.Populator;
import de.hybris.platform.core.model.product.ProductModel;
import org.apache.commons.beanutils.ConversionException;
import org.training.core.model.TrainingProductModel;
import org.training.core.model.TrainingVariantProductModel;

public class ProductBrandPopulator implements Populator<ProductModel, ProductData> {
    @Override
    public void populate(ProductModel source, ProductData target) throws ConversionException {
        if (source instanceof TrainingVariantProductModel) {
            TrainingProductModel trainingProductModel = (TrainingProductModel) ((TrainingVariantProductModel) source).getBaseProduct();
            target.setBrand(trainingProductModel.getName());
        }
    }
}


