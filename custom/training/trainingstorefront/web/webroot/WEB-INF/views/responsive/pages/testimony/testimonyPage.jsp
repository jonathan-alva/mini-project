<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<template:page pageTitle="${pageTitle}">

    <c:url value="/" var="homePageUrl"/>
    <div class="container">
        <cms:pageSlot position="HeaderContent" var="comp" element="div" class="header-comtent">
            <cms:component component="${comp}" element="h1"/>
        </cms:pageSlot>
        <cms:pageSlot position="SubHeaderContent" var="comp" element="div" class="errorNotFoundPageBottom">
            <cms:component component="${comp}" element="div" class="errorNotFoundPageBottom-component"/>
        </cms:pageSlot>
        <cms:pageSlot position="ParagraphContent" var="feature" element="div" class="errorNotFoundPageSide">
            <cms:component component="${feature}" element="div" class="errorNotFoundPageSide-component"/>
        </cms:pageSlot>
        <div class="container d-flex">
            <c:forEach items="${testimonyList}" var="testimony">
                <div class="item">
                    <div class="card">
                        <div class="card-data">
                            <div class="card-detail">
                                <p class="product-name">${testimony.name}</p>
                                <p class="product-name">${testimony.rate}</p>
                                <p class="product-name">${testimony.title}</p>
                                <p class="product-name">${testimony.textArea}</p>
                                    <%--<p class="product-sku">${product.sku}</p>--%>
                                    <%--<p class="product-material">${product.material}</p>--%>
                            </div>
                        </div>
                    </div>
                    </a>
                </div>

            </c:forEach>
        </div>
    </div>

</template:page>