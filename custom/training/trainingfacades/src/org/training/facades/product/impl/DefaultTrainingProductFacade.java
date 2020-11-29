package org.training.facades.product.impl;


import de.hybris.platform.commercefacades.product.ProductFacade;
import de.hybris.platform.commercefacades.product.ProductOption;
import de.hybris.platform.commercefacades.product.data.ProductData;
import de.hybris.platform.core.model.product.ProductModel;
import de.hybris.platform.servicelayer.dto.converter.Converter;
import org.apache.commons.collections.CollectionUtils;
import org.training.core.model.TrainingVariantProductModel;
import org.training.core.service.TrainingProductService;
import org.training.facades.product.TrainingProductFacade;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class DefaultTrainingProductFacade implements TrainingProductFacade {

    @Resource(name="defaultTrainingProductService")
    TrainingProductService productroductService;

    @Resource(name="productConverter")
    private Converter<ProductModel, ProductData> productConverter;

    @Resource(name = "productVariantFacade")
    private ProductFacade productFacade;

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
    public List<Object> getSomeBedsProductData() {
        List<ProductModel> productModels = productroductService.getAllProductModels();
        if(CollectionUtils.isNotEmpty(productModels)){
//            final List<ProductData> productDataList = new ArrayList<>();
            final List<Object> data = new ArrayList<>();
            List<String> baseProductNameList = new ArrayList<>();
            for(final ProductModel productModel: productModels){
                // Check if category code of the product is "BED"
                if(productModel.getSupercategories().size()>0){
                    String productCategory = productModel.getSupercategories().iterator().next().getCode();
                    if(productCategory.equals("BED")){
                        String baseProductName = ((TrainingVariantProductModel) productModel).getBaseProduct().getName();
                        if(!baseProductNameList.contains(baseProductName)){
                            final List<ProductOption> options = new ArrayList<>(Arrays.asList(ProductOption.PRICE));
                            final ProductData productDataConvert = productFacade.getProductForCodeAndOptions(productModel.getCode(), options);
//                        ProductData productDataConvert = productConverter.convert(productModel);
                            Object object[] = {productDataConvert,productModel};
                            baseProductNameList.add(baseProductName);
//                        productDataList.add(productConverter.convert(productModel));
                            data.add(object);
                        }
                    }
                }
            }
            return data;
        }
        return Collections.emptyList();
    }

    @Override
    public List<ProductData> getProductVariant(ProductModel productModel) {
        List<ProductModel> productModels = productroductService.getAllProductVariant(productModel);
        if(CollectionUtils.isNotEmpty(productModels)){
            final List<ProductData> productDataList = new ArrayList<>(productModels.size());
            for(final ProductModel productModel1:productModels){
                productDataList.add(productConverter.convert(productModel1));
            }
            return productDataList;
        }
        return Collections.emptyList();
    }
}
