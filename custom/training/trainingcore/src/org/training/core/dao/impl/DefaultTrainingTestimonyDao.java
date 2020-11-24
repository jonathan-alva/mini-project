package org.training.core.dao.impl;

import de.hybris.platform.cms2.servicelayer.daos.impl.DefaultItemDao;
import de.hybris.platform.core.model.ItemModel;
import de.hybris.platform.servicelayer.search.FlexibleSearchQuery;
import de.hybris.platform.servicelayer.search.FlexibleSearchService;
import de.hybris.platform.servicelayer.search.SearchResult;
import org.apache.commons.collections.CollectionUtils;
import org.training.core.dao.TrainingTestimonyDao;
import org.training.core.model.TrainingTestimonyModel;

import java.util.Collections;
import java.util.List;

public class DefaultTrainingTestimonyDao extends DefaultItemDao implements TrainingTestimonyDao {

    private FlexibleSearchService flexibleSearchService;

    @Override
    public FlexibleSearchService getFlexibleSearchService() {
        return flexibleSearchService;
    }

    @Override
    public void setFlexibleSearchService(FlexibleSearchService flexibleSearchService) {
        this.flexibleSearchService = flexibleSearchService;
    }

    @Override
    public List<TrainingTestimonyModel> getAllTestimonyModels() {
        final String query = "SELECT {t.pk} FROM {TrainingTestimony as t}";
        final FlexibleSearchQuery searchQuery = new FlexibleSearchQuery(query);
        searchQuery.addQueryParameter("catalogversion", "Online");
        final SearchResult<TrainingTestimonyModel> searchResult = flexibleSearchService.search(searchQuery);
        final List<TrainingTestimonyModel> trainingTestimonyModels = searchResult.getResult();
        if(CollectionUtils.isNotEmpty(trainingTestimonyModels)){
            return trainingTestimonyModels;
        }

        return Collections.emptyList();
    }
}
