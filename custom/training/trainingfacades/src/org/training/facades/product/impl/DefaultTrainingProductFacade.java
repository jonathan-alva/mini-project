package org.training.facades.product.impl;


import de.hybris.platform.commercefacades.product.data.ProductData;
import de.hybris.platform.core.model.product.ProductModel;
import de.hybris.platform.servicelayer.dto.converter.Converter;
import org.apache.commons.collections.CollectionUtils;
import org.training.core.model.TrainingVariantProductModel;
import org.training.core.service.TrainingProductService;
import org.training.facades.product.TrainingProductFacade;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class DefaultTrainingProductFacade implements TrainingProductFacade {

    @Resource(name="defaultTrainingProductService")
    TrainingProductService productroductService;

    @Resource(name="productConverter")
    private Converter<ProductModel, ProductData> productConverter;

    @Override
    public List<ProductData> getAllProductsData() {
        List<ProductModel> productModels = productroductService.getAllProductModels();
        if(CollectionUtils.isNotEmpty(productModels)){
            final List<ProductData> productDataList = new ArrayList<>(productModels.size());
            for(final ProductModel productModel:productModels){
                productDataList.add(productConverter.convert(productModel));
            }
            return productDataList;
        }
        return Collections.emptyList();
    }

    @Override
    public List<ProductData> getSomeBedsProductData() {
        List<ProductModel> productModels = productroductService.getAllProductModels();
        if(CollectionUtils.isNotEmpty(productModels)){
            final List<ProductData> productDataList = new ArrayList<>();
            List<String> baseProductNameList = new ArrayList<>();
            for(final ProductModel productModel: productModels){
                // Check if category code of the product is "BED"
                String productCategory = productModel.getSupercategories().iterator().next().getCode();
                if(productCategory.equals("BED")){
                    String baseProductName = ((TrainingVariantProductModel) productModel).getBaseProduct().getName();
                    if(!baseProductNameList.contains(baseProductName)){
                        baseProductNameList.add(baseProductName);
                        productDataList.add(productConverter.convert(productModel));
                    }

                }
            }
            return productDataList;
        }
        return Collections.emptyList();
    }
}
