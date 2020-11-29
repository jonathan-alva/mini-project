package org.training.core.service.impl;

import de.hybris.platform.cms2.items.service.impl.DefaultItemService;
import de.hybris.platform.core.model.ItemModel;
import org.training.core.dao.TrainingTestimonyDao;
import org.training.core.model.TrainingTestimonyModel;
import org.training.core.service.TrainingTestimonyService;

import javax.annotation.Resource;
import java.util.List;

public class DefaultTrainingTestimonyService extends DefaultItemService implements TrainingTestimonyService {

    @Resource(name = "defaultTrainingTestimonyDao")
    private TrainingTestimonyDao trainingTestimonyDao;

    @Override
    public List<TrainingTestimonyModel> getAllTestimonyModels() {
        return trainingTestimonyDao.getAllTestimonyModels();
    }
}
