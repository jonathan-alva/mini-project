<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="product" required="true" type="de.hybris.platform.commercefacades.product.data.ProductData" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="action" tagdir="/WEB-INF/tags/responsive/action" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:if test="${product.variantType eq 'TrainingVariantProduct'}">
    <c:set var="variantOptions" value="${product.variantOptions}"/>
</c:if>
<c:if test="${(empty variantOptions) and (not empty product.baseOptions[0].options) and (product.baseOptions[0].variantType eq 'TrainingVariantProduct')}">
    <c:set var="variantOptions" value="${product.baseOptions[0].options}"/>
    <c:set var="currentStyleUrl" value="${product.url}"/>
</c:if>
<c:if test="${(empty variantOptions) and (not empty product.baseOptions[1].options) and (product.baseOptions[1].variantType eq 'TrainingVariantProduct')}">
    <c:set var="variantOptions" value="${product.baseOptions[1].options}"/>
    <c:set var="currentStyleUrl" value="${product.baseOptions[1].selected.url}"/>
</c:if>
<c:set var="recentProduct" value="${fn:escapeXml(currentProductCode)}"/>
<c:forEach items="${variantOptions}" var="variantOption">
    <c:if test="${recentProduct ne variantOption.name}">
        <div class="catalog-product">
            <a href=".${fn:escapeXml(variantOption.url)}"
               title="${fn:escapeXml(variantOption.name)}">
                <div class="catalog-product-image">
                    <product:productPrimaryImage product="${product}" format="thumbnail"/>
                </div>
                <h3 class="catalog-product-name">${variantOption.name}</h3>
                <div class="catalog-product-size">${variantOption.size}</div>
                <div class="catalog-product-price">${variantOption.priceData.formattedValue}</div>
            </a>
        </div>
    </c:if>
</c:forEach>