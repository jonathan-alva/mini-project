<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="pdp">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-xl-7 pdp-image">
                <product:productPrimaryImage product="${product}" format="thumbnail"/>
            </div>
            <div class="col-lg-5 col-xl-5 pdp-desc">
                <div class="d-block d-lg-none mt-4"></div>
                <h1 class="pdp-desc-name">${fn:escapeXml(baseProductName)}</h1>
                <div class="pdp-desc-subname">${fn:escapeXml(product.name)}</div>
                <div class="pdp-desc-price"><product:productPricePanel product="${product}"/></div>
                <div>
                    <div class="pdp-desc-size">${fn:escapeXml(product.size)}<br>
                        <br>
                        <span class="pdp-desc-summary">${fn:escapeXml(product.summary)}</span>

                    </div>
                    <cms:pageSlot position="AddToCart" var="component" element="div"
                                  class="page-details-variants-select">
                        <cms:component component="${component}" element="div"
                                       class="yComponentWrapper page-details-add-to-cart-component"/>
                    </cms:pageSlot>
                </div>
            </div>
        </div>
    </div>
    <div class="catalog">
        <div class="container">
            <div>
                <div class="row d-flex justify-content ">
                    <c:forEach items="${variantList}" var="product">
                        <div class="catalog-product">
                            <a href=".${fn:escapeXml(product.url)}"
                               title="${fn:escapeXml(product.name)}">
                                <div class="catalog-product-image">
                                    <product:productPrimaryImage product="${product}" format="thumbnail"/>
                                </div>
                                <h3 class="catalog-product-name">${product.name}</h3>
                                <div class="catalog-product-size">${product.size}</div>
                                <div class="catalog-product-price"><product:productPricePanel product="${product}"/></div>
                            </a>

                        </div>

                    </c:forEach>
                </div>
            </div>
            <div class="catalog-allbtn text-center">
                <a class="btn btn-brand" href="#">
                    Lihat Semua Produk
                </a>
            </div>
        </div>
    </div>

