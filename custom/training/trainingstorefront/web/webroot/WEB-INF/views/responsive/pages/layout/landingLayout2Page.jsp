<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<template:page pageTitle="${pageTitle}">
    <div class="wrapper">
        <section class="main-banner">
            <cms:pageSlot position="Section1" var="feature">
                <cms:component component="${feature}"/>
            </cms:pageSlot>
        </section>
        <section class="product-section">
            <div class="container">
                <div class="product-section-header">
                    <cms:pageSlot position="SectionProduct" var="comp" element="div" class="container">
                        <cms:component component="${comp}" element="h1" class=""/>
                    </cms:pageSlot>
                </div>
                <div class="product-section-subtitle">
                    <cms:pageSlot position="SectionProductText1" var="comp" element="div" class="container">
                        <cms:component component="${comp}" element="p" class=""/>
                    </cms:pageSlot>
                    <cms:pageSlot position="SectionProductText2" var="comp" element="div" class="container">
                        <cms:component component="${comp}" element="p" class=""/>
                    </cms:pageSlot>
                </div>
            </div>
            <div class="container product-card-list-container">
                    <%--Product Carousel--%>
                <c:forEach items="${productBedDataList}" var="product">
                    <div class="product-card-home">
                        <div class="product-card-home-body">
                                <%--IMG--%>
                            <product:productPrimaryImage product="${product}" format="thumbnail"/>
                            <div class="product-card-home-title">
                                <h3>${product.brand}</h3>
                            </div>
                            <div class="product-card-home-subtitle">
                                    ${product.foam}
                                <br/>
                                    ${product.mattress}
                            </div>
                            <div class="product-card-home-price">
                                <product:productListerItemPrice product="${product}"/>
                            </div>
                            <a class="product-card-home-btn" href=".${fn:escapeXml(product.url)}">
                                Beli Sekarang
                            </a>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </section>
        <section class="unboxing">
            <div class="container my-0">
                <cms:pageSlot position="SectionUnboxing" var="comp" element="div" class="container">
                    <cms:component component="${comp}" element="h2" class="section-unboxing-header"/>
                </cms:pageSlot>
                <div class="unboxing-items">
                    <div class="unboxing-item">
                            <%--Img--%>
                        <cms:pageSlot position="UnboxingItem1" var="feature">
                            <cms:component component="${feature}" class="test"/>
                        </cms:pageSlot>
                            <%--Title--%>
                        <cms:pageSlot position="UnboxingItem1Title" var="comp" element="div" class="">
                            <cms:component component="${comp}" element="h3" class="unboxing-item-title"/>
                        </cms:pageSlot>
                            <%--Desc--%>
                        <cms:pageSlot position="UnboxingItem1Desc" var="comp" element="div" class="">
                            <cms:component component="${comp}" element="p" class="unboxing-item-desc"/>
                        </cms:pageSlot>
                    </div>
                    <div class="unboxing-item">
                    <%--Img--%>
                    <cms:pageSlot position="UnboxingItem2" var="feature">
                        <cms:component component="${feature}" class="test"/>
                    </cms:pageSlot>
                    <%--Title--%>
                    <cms:pageSlot position="UnboxingItem2Title" var="comp" element="div" class="">
                        <cms:component component="${comp}" element="h3" class="unboxing-item-title"/>
                    </cms:pageSlot>
                    <%--Desc--%>
                    <cms:pageSlot position="UnboxingItem2Desc" var="comp" element="div" class="">
                        <cms:component component="${comp}" element="p" class="unboxing-item-desc"/>
                    </cms:pageSlot>
                    </div>
                    <div class="unboxing-item">
                    <%--Img--%>
                    <cms:pageSlot position="UnboxingItem3" var="feature">
                        <cms:component component="${feature}" class="test"/>
                    </cms:pageSlot>
                    <%--Title--%>
                    <cms:pageSlot position="UnboxingItem3Title" var="comp" element="div" class="">
                        <cms:component component="${comp}" element="h3" class="unboxing-item-title"/>
                    </cms:pageSlot>
                    <%--Desc--%>
                    <cms:pageSlot position="UnboxingItem3Desc" var="comp" element="div" class="">
                        <cms:component component="${comp}" element="p" class="unboxing-item-desc"/>
                    </cms:pageSlot>
                    </div>
                    <div class="unboxing-item">
                    <%--Img--%>
                    <cms:pageSlot position="UnboxingItem4" var="feature">
                        <cms:component component="${feature}" class="test"/>
                    </cms:pageSlot>
                    <%--Title--%>
                    <cms:pageSlot position="UnboxingItem4Title" var="comp" element="div" class="">
                        <cms:component component="${comp}" element="h3" class="unboxing-item-title"/>
                    </cms:pageSlot>
                    <%--Desc--%>
                    <cms:pageSlot position="UnboxingItem4Desc" var="comp" element="div" class="">
                        <cms:component component="${comp}" element="p" class="unboxing-item-desc"/>
                    </cms:pageSlot>
                    </div>

                </div>
            </div>
        </section>
        <section class="testimoni-section">
                <%--Testimoni--%>
            <div class="container my-0">
                <cms:pageSlot position="SectionTestimoni" var="comp" element="div" class="container">
                    <cms:component component="${comp}" element="h2" class="section-testimoni-header"/>
                </cms:pageSlot>
                <div class="testimoni-section-subtitle">
                    <div class="mb-2">
                        <cms:pageSlot position="TestimoniSubtitle1" var="comp">
                            <cms:component component="${comp}" element="p"/>
                        </cms:pageSlot>
                    </div>
                    <cms:pageSlot position="TestimoniSubtitle2" var="comp">
                        <cms:component component="${comp}" element="p"/>
                    </cms:pageSlot>
                </div>
                <div class="testimoni-section-total-stars text-right">
                    <div class="total-stars-container">
                        <div class="total-stars">
                            <cms:pageSlot position="TotalStars" var="feature">
                                <cms:component component="${feature}" element="div" class="star-container"/>
                            </cms:pageSlot>
                        </div>
                        <div class="total-stars-review">
                            <cms:pageSlot position="TotalReview" var="comp">
                                <cms:component component="${comp}" element="p"/>
                            </cms:pageSlot>
                        </div>
                    </div>
                </div>
                <div class="testimoni-card-container">
                    <c:forEach items="${testimonyList}" var="testimony">
                    <div>
                        <div class="testimoni-card">
                            <div class="testimoni-card-header">
                                <div class="testimoni-card-header-name">
                                    <p>${fn:escapeXml(testimony.name)}</p>
                                </div>
                                <div class="testimoni-card-header-image">
                                    <cms:pageSlot position="Review1Avatar" var="feature">
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
                                        <strong>${fn:escapeXml(testimony.title)}</strong>
                                    </div>
                                    <div class="testimoni-card-content-desc">
                                        <p>${fn:escapeXml(testimony.textArea)}</p>
                                    </div>
                                    <div class="testimoni-card-content-datetime">
                                        <p>${fn:escapeXml(testimony.dateTestimony)}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="testimoni-section-button-container">
                <a class="testimoni-section-button" href="./testimony">Lihat Semua Testimoni</a>
            </div>
        </div>
    </section>
</div>
</template:page>
