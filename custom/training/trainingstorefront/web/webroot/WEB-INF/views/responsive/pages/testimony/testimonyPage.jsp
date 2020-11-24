<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>

<template:page pageTitle="${pageTitle}">

    <c:url value="/" var="homePageUrl"/>
    <div class="testimoni">
        <div class="container">
            <cms:pageSlot position="HeaderContent" var="comp" element="div" class="testimoni-header">
                <cms:component component="${comp}" element="h1"/>
            </cms:pageSlot>
            <cms:pageSlot position="SubHeaderContent" var="comp" element="div" class="testimoni-subheader">
                <cms:component component="${comp}" element="div" class="errorNotFoundPageBottom-component"/>
            </cms:pageSlot>
            <cms:pageSlot position="ParagraphContent" var="feature" element="div" class="testimoni-paragraph">
                <cms:component component="${feature}" element="div" class="errorNotFoundPageSide-component"/>
            </cms:pageSlot>
            <div class="d-flex">
                <c:forEach items="${testimonyList}" var="testimony">
                    <div class="item">
                        <div class="testimoni-card">
                            <div class="testimoni-card-header">
                                <div class="testimoni-card-header-name">
                                    <p>
                                    <div class="content">${testimony.name}</div>
                                    </p>
                                </div>
                                <div class="testimoni-card-header-image">
                                    <cms:pageSlot position="TestimonyAvatar" var="feature">
                                        <cms:component component="${feature}" element="div" class=""/>
                                    </cms:pageSlot>
                                </div>
                            </div>
                            <div class="testimoni-card-body">
                                <div class="testimoni-card-stars">
                                    <div class="total-stars">
                                        <div class="star-container star-review display-flex">
                                            <c:set var="testimonyRate" value="${testimony.rate}"/>
                                            <c:set var="floorRate" value="${Math.floor(testimony.rate)}"/>
                                            <c:set var="left" value="${testimonyRate - floorRate}"/>

                                            <c:forEach var="i" begin="1" end="${floorRate}" varStatus="loop" step="1">
                                                <cms:pageSlot position="ReviewFullStar" var="star">
                                                    <cms:component component="${star}" />
                                                </cms:pageSlot>
                                            </c:forEach>
                                            <c:if test="${left > 0}">
                                                <cms:pageSlot position="ReviewHalfStar" var="star">
                                                    <cms:component component="${star}" class=""/>
                                                </cms:pageSlot>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                                <div class="testimoni-card-content">
                                    <div class="testimoni-card-content-title">
                                        <strong>
                                            <div class="content"> ${testimony.title}</div>
                                        </strong>
                                    </div>
                                    <div class="testimoni-card-content-desc">
                                        <p>
                                        <div class="content">${testimony.textArea}</div>
                                        </p>
                                    </div>
                                    <div class="testimoni-card-content-datetime">
                                        <p>${testimony.dateTestimony}</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </c:forEach>
            </div>
        </div>

    </div>

</template:page>