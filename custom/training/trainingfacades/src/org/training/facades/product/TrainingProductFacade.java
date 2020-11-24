package org.training.facades.product;

import de.hybris.platform.commercefacades.product.data.ProductData;
import de.hybris.platform.core.model.product.ProductModel;


import java.util.List;

public interface TrainingProductFacade {
    List<ProductData> getAllProductsData();
    List<Object> getSomeBedsProductData();
    List<ProductData> getProductVariant(ProductModel productModel);
}
