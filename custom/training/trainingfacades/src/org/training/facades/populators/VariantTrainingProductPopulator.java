package org.training.facades.populators;

import de.hybris.platform.commercefacades.product.data.ProductData;
import de.hybris.platform.commercefacades.product.data.VariantOptionData;
import de.hybris.platform.converters.Populator;
import de.hybris.platform.core.model.product.ProductModel;
import de.hybris.platform.servicelayer.dto.converter.ConversionException;
import de.hybris.platform.variants.model.VariantProductModel;
import org.training.core.model.TrainingVariantProductModel;

public class VariantTrainingProductPopulator implements Populator<VariantProductModel, VariantOptionData> {
    @Override
    public void populate(VariantProductModel source, VariantOptionData target) throws ConversionException {
        TrainingVariantProductModel trainingVariantProductModel = (TrainingVariantProductModel) source;
        target.setSize((trainingVariantProductModel.getSize()));
        target.setName((trainingVariantProductModel.getName()));
    }
}
