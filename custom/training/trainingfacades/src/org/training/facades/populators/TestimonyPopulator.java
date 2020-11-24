package org.training.facades.populators;

import de.hybris.platform.converters.Populator;
import de.hybris.platform.servicelayer.dto.converter.ConversionException;
import org.training.core.data.beans.TestimonyData;
import org.training.core.model.TrainingTestimonyModel;

public class TestimonyPopulator implements Populator<TrainingTestimonyModel, TestimonyData> {
    @Override
    public void populate(TrainingTestimonyModel source, TestimonyData target) throws ConversionException {
        target.setName(source.getName());
        target.setTitle(source.getTitle());
        target.setRate(source.getRate());
        target.setTextArea(source.getTextArea());
        target.setDateTestimony(source.getDateTestimony());
    }
}
