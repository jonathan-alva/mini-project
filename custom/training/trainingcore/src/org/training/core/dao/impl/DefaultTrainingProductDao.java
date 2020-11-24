package org.training.core.dao.impl;

import de.hybris.platform.core.model.product.ProductModel;
import de.hybris.platform.product.daos.impl.DefaultProductDao;
import de.hybris.platform.servicelayer.search.FlexibleSearchQuery;
import de.hybris.platform.servicelayer.search.FlexibleSearchService;
import de.hybris.platform.servicelayer.search.SearchResult;
import org.apache.commons.collections.CollectionUtils;
import org.training.core.dao.TrainingProductDao;
import org.training.core.model.TrainingVariantProductModel;

import java.util.Collections;
import java.util.List;

public class DefaultTrainingProductDao extends DefaultProductDao implements TrainingProductDao {

    private FlexibleSearchService flexibleSearchService;

    public DefaultTrainingProductDao(String typecode) {
        super(typecode);
    }

    @Override
    public FlexibleSearchService getFlexibleSearchService() {
        return flexibleSearchService;
    }

    @Override
    public void setFlexibleSearchService(FlexibleSearchService flexibleSearchService) {
        this.flexibleSearchService = flexibleSearchService;
    }


    @Override
    public List<ProductModel> getAllProductModels() {
        final String query = "SELECT {p.pk} FROM {TrainingVariantProduct as p "+
                "JOIN CatalogVersion as cv ON {p.catalogversion}={cv.pk}}"+
                "WHERE {cv.version}=?catalogVersion";
        final FlexibleSearchQuery searchQuery = new FlexibleSearchQuery(query);
        searchQuery.addQueryParameter("catalogversion", "Online");
        final SearchResult<ProductModel> searchResult = flexibleSearchService.search(searchQuery);
        final List<ProductModel> productModels = searchResult.getResult();
        if(CollectionUtils.isNotEmpty(productModels)){
            return productModels;
        }

        return Collections.emptyList();
    }

    @Override
    public List<ProductModel> getAllProductVariant(ProductModel productModel) {
        String baseProductCode = ((TrainingVariantProductModel) productModel).getBaseProduct().getCode();
        String currentProductCode = productModel.getCode();

        final String query = "SELECT {p.pk} FROM {TrainingVariantProduct as p "+
                "JOIN CatalogVersion as cv ON {p.catalogversion}={cv.pk}"+
                "JOIN TrainingProduct as tp ON {p.baseProduct}={tp.pk}}"+
                "WHERE {cv.version}=?catalogVersion and {tp.code}=?baseProductCode and {p.code}!=?currentProductCode";
        final FlexibleSearchQuery searchQuery = new FlexibleSearchQuery(query);
        searchQuery.addQueryParameter("catalogversion", "Online");
        searchQuery.addQueryParameter("baseProductCode", baseProductCode);
        searchQuery.addQueryParameter("currentProductCode", currentProductCode);
        final SearchResult<ProductModel> searchResult = flexibleSearchService.search(searchQuery);
        final List<ProductModel> productModels = searchResult.getResult();
        if(CollectionUtils.isNotEmpty(productModels)){
            return productModels;
        }

        return Collections.emptyList();
    }
}
