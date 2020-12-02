package org.training.storefront.controllers.pages;

import de.hybris.platform.acceleratorstorefrontcommons.controllers.pages.AbstractPageController;
import de.hybris.platform.cms2.exceptions.CMSItemNotFoundException;
import de.hybris.platform.cms2.model.pages.ContentPageModel;
import de.hybris.platform.commercefacades.product.data.ProductData;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.training.core.data.beans.TestimonyData;
import org.training.facades.product.impl.DefaultTrainingProductFacade;
import org.training.facades.testimony.Impl.DefaultTrainingTestimonyFacade;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/")
public class TestimonyPageController extends AbstractPageController {
    private static final String TESTIMONY_PAGE = "testimony";

    @Resource(name = "trainingTestimonyFacade")
    private DefaultTrainingTestimonyFacade testimonyFacade;

    @RequestMapping(value = TESTIMONY_PAGE, method = RequestMethod.GET)
    public String getPriceEngine(final Model model) throws CMSItemNotFoundException {

        final ContentPageModel contentPageModel = getContentPageForLabelOrId(TESTIMONY_PAGE);
        storeCmsPageInModel(model, contentPageModel);
        setUpMetaDataForContentPage(model, contentPageModel);

        List<TestimonyData> testimonyDataList = testimonyFacade.getAllTestimonyModels();
        model.addAttribute("testimonyList", testimonyDataList);

        return getViewForPage(model);
    }
}
