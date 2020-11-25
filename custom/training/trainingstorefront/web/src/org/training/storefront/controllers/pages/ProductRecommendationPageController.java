package org.training.storefront.controllers.pages;

import de.hybris.platform.cms2.exceptions.CMSItemNotFoundException;
import de.hybris.platform.cms2.model.pages.ContentPageModel;
//import de.hybris.platform.commercefacades.product.ProductFacade;
//import de.hybris.platform.commercefacades.product.ProductOption;
import de.hybris.platform.cmsfacades.data.ItemData;
import de.hybris.platform.commercefacades.product.data.ProductData;
//import de.hybris.platform.core.model.product.ProductModel;
import de.hybris.platform.core.model.product.ProductModel;
import de.hybris.platform.variants.model.VariantProductModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.training.core.service.TrainingProductService;
import org.training.core.data.beans.TestimonyData;
import org.training.facades.product.impl.DefaultTrainingProductFacade;
import org.training.facades.testimony.Impl.DefaultTrainingTestimonyFacade;

import javax.annotation.Resource;
//import java.util.ArrayList;
//import java.util.Arrays;
import java.util.Collection;
import java.util.List;

@Controller
@RequestMapping("/")
public class ProductRecommendationPageController extends ProductPageController {
    private static final String PRODUCT_RECOMMENDATION_PAGE = "product-recommendation";


    @Resource(name = "trainingProductFacade")
    private DefaultTrainingProductFacade productFacade;

    @RequestMapping(value = PRODUCT_RECOMMENDATION_PAGE, method = RequestMethod.GET)
    public String getPriceEngine(final Model model) throws CMSItemNotFoundException {

        final ContentPageModel contentPageModel = getContentPageForLabelOrId(PRODUCT_RECOMMENDATION_PAGE);
        storeCmsPageInModel(model, contentPageModel);
        setUpMetaDataForContentPage(model, contentPageModel);


        List<ProductData> productDataList = productFacade.getAllProductsData();
        model.addAttribute("productList", productDataList);

        return getViewForPage(model);
    }
}
