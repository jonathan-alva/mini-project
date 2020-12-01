package org.training.facades.testimony.Impl;


import de.hybris.platform.servicelayer.dto.converter.Converter;
import org.apache.commons.collections.CollectionUtils;
import org.training.core.data.beans.TestimonyData;
import org.training.core.model.TrainingTestimonyModel;
import org.training.core.service.TrainingTestimonyService;
import org.training.facades.testimony.TrainingTestimonyFacade;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

public class DefaultTrainingTestimonyFacade implements TrainingTestimonyFacade {

    @Resource(name="defaultTrainingTestimonyService")
    TrainingTestimonyService trainingTestimonyService;

    @Resource(name="defaultTestimonyConverter")
    private Converter<TrainingTestimonyModel, TestimonyData> testimonyDataConverter;

    @Override
    public List<TestimonyData> getAllTestimonyModels() {
        List<TrainingTestimonyModel> trainingTestimonyModels = trainingTestimonyService.getAllTestimonyModels();
        if(CollectionUtils.isNotEmpty(trainingTestimonyModels)){
            return testimonyDataConverter.convertAll(trainingTestimonyModels);
        }
        return Collections.emptyList();
    }
}
