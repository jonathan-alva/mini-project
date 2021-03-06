<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="multi-checkout" tagdir="/WEB-INF/tags/responsive/checkout/multi" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<spring:url value="/checkout/multi/summary/placeOrder" var="placeOrderUrl" htmlEscape="false"/>
<spring:url value="/checkout/multi/termsAndConditions" var="getTermsAndConditionsUrl" htmlEscape="false"/>

<template:page pageTitle="${pageTitle}" hideHeaderLinks="true">
    <div class="checkout">
        <div class="container">
            <div class="checkout-heading">
                <spring:theme code="checkout.multi.heading"/>
            </div>
            <div class="checkout-portlet">
                <div class="checkout-body">
                    <div class="row">
                        <div class="col-sm-7 col-lg-8">
                            <multi-checkout:checkoutSteps checkoutSteps="${checkoutSteps}" progressBarId="${progressBarId}">
                                <ycommerce:testId code="checkoutStepFour">
                                    <div class="checkout-review hidden-xs">
                                        <div class="checkout-order-summary">
                                            <multi-checkout:orderTotals cartData="${cartData}" showTaxEstimate="${showTaxEstimate}"
                                                                        showTax="${showTax}" subtotalsCssClasses="dark"/>
                                        </div>
                                    </div>
                                    <div class="place-order-form hidden-xs">
                                        <form:form action="${placeOrderUrl}" id="placeOrderForm1" modelAttribute="placeOrderForm">
                                            <div class="checkbox">
                                                <label> <form:checkbox id="Terms1" path="termsCheck"/>
                                                    <spring:theme var="termsAndConditionsHtml"
                                                                  code="checkout.summary.placeOrder.readTermsAndConditions"
                                                                  arguments="${fn:escapeXml(getTermsAndConditionsUrl)}"
                                                                  htmlEscape="false"/>
                                                        ${ycommerce:sanitizeHTML(termsAndConditionsHtml)}
                                                </label>
                                            </div>

                                            <button id="placeOrder" type="submit" class="btn btn-brand btn-place-order btn-block">
                                                <spring:theme code="checkout.summary.placeOrder" text="Place Order"/>
                                            </button>
                                        </form:form>
                                    </div>
                                </ycommerce:testId>
                            </multi-checkout:checkoutSteps>
                        </div>

                        <div class="col-sm-5 col-lg-4 hidden-xs">
                            <multi-checkout:checkoutOrderSummary cartData="${cartData}" showDeliveryAddress="true"
                                                                 showPaymentInfo="true" showTaxEstimate="true" showTax="true"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</template:page>
