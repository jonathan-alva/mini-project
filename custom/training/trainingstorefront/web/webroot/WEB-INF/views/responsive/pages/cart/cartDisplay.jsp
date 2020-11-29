<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="cart" tagdir="/WEB-INF/tags/responsive/cart" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<spring:htmlEscape defaultHtmlEscape="true" />

<div class="cart-header border">
    <div class="row">
        <div class="col-xs-12 text-center">
            <h1 class="cart-headline">
                <spring:theme code="text.cart"/>
            </h1>
        </div>
        <div class="col-xs-12 col-sm-7">

            <sec:authorize access="!hasAnyRole('ROLE_ANONYMOUS')">
                <c:if test="${not empty savedCartCount and savedCartCount ne 0}">
                    <spring:url value="/my-account/saved-carts" var="listSavedCartUrl" htmlEscape="false"/>
                    <a href="${fn:escapeXml(listSavedCartUrl)}" class="save__cart--link cart__head--link">
                        <spring:theme code="saved.cart.total.number" arguments="${savedCartCount}"/>
                    </a>
                    <c:if test="${not empty quoteCount and quoteCount ne 0}">
                        <spring:url value="/my-account/my-quotes" var="listQuotesUrl" htmlEscape="false"/>
                        <a href="${fn:escapeXml(listQuotesUrl)}" class="cart__quotes--link cart__head--link">
                            <spring:theme code="saved.quote.total.number" arguments="${quoteCount}"/>
                        </a>
                    </c:if>

                </c:if>
            </sec:authorize>
        </div>
    </div>
</div>


<c:if test="${not empty cartData.rootGroups}">
    <c:url value="/cart/checkout" var="checkoutUrl" scope="session"/>
    <c:url value="/quote/create" var="createQuoteUrl" scope="session"/>
    <c:url value="${continueUrl}" var="continueShoppingUrl" scope="session"/>
    <c:set var="showTax" value="false"/>


    <cart:cartItems cartData="${cartData}"/>

</c:if>
<cart:ajaxCartTopTotalSection/>
