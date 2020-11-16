<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>

<template:page pageTitle="${pageTitle}">
<div class="wrapper">
    <section class="main-banner">
        <cms:pageSlot position="Section1" var="feature">
            <cms:component component="${feature}" />
        </cms:pageSlot>
    </section>
    <section>
        <%--Beli Kasur--%>
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
                        <cms:component component="${comp}" element="p" />
                    </cms:pageSlot>
                </div>
                <cms:pageSlot position="TestimoniSubtitle2" var="comp">
                    <cms:component component="${comp}" element="p" />
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
                            <cms:component component="${comp}" element="p" />
                        </cms:pageSlot>
                    </div>
                </div>
            </div>
            <div class="testimoni-card-container">
                <div class="testimoni-card">
                    <div class="testimoni-card-header">
                        <div class="testimoni-card-header-name">
                            <cms:pageSlot position="Review1Name" var="comp">
                                <cms:component component="${comp}" element="p" />
                            </cms:pageSlot>
                            Baim Wong
                        </div>
                        <div class="testimoni-card-header-image">

                        </div>
                    </div>
                    <div class="testimoni-card-body">
                        <div class="testimoni-card-stars">
                            <div class="total-stars">
                            <%--<cms:pageSlot position="Review1TotalStars" var="feature">--%>
                            <%--<cms:component component="${feature}" element="div" class="star-container star-review"/>--%>
                            <%--</cms:pageSlot>--%>
                            </div>
                        </div>
                        <div class="testimoni-card-content">
                            <div class="testimoni-card-content-title">
                            <%--<cms:pageSlot position="Review1Title" var="comp">--%>
                            <%--<cms:component component="${comp}" element="strong" />--%>
                            <%--</cms:pageSlot>--%>Mantap Banget
                            </div>
                            <div class="testimoni-card-content-desc">
                            <%--<cms:pageSlot position="Review1Desc" var="comp">--%>
                            <%--<cms:component component="${comp}" element="p" />--%>
                            <%--</cms:pageSlot>--%>

                            Kasur baru yang packing nya simple banget, masuk ke dalam box! Kasur @inthebox.id dengan teknologi Pocket Springbed ini enak banget, nyaman dan empuk! Ada Free Bantal dan Free Ongkirnya juga lhoo! Mantap banget

                            </div>
                            <div class="testimoni-card-content-datetime">
                            <%--<cms:pageSlot position="Review1Datetime" var="comp">--%>
                            <%--<cms:component component="${comp}" element="p" />--%>
                            <%--</cms:pageSlot>--%>
                            9 Sep 2020 - 11:22 am
                            </div>

                        </div>
                    </div>
                </div>
                <div class="testimoni-card">
                <div class="testimoni-card-header">
                <div class="testimoni-card-header-name">
                <%--<cms:pageSlot position="Review1Name" var="comp">--%>
                <%--<cms:component component="${comp}" element="p" />--%>
                <%--</cms:pageSlot>--%>
                Baim Wong
                </div>
                <div class="testimoni-card-header-image">

                </div>
                </div>
                <div class="testimoni-card-body">
                <div class="testimoni-card-stars">
                <div class="total-stars">
                <%--<cms:pageSlot position="Review1TotalStars" var="feature">--%>
                <%--<cms:component component="${feature}" element="div" class="star-container star-review"/>--%>
                <%--</cms:pageSlot>--%>
                </div>
                </div>
                <div class="testimoni-card-content">
                <div class="testimoni-card-content-title">
                <%--<cms:pageSlot position="Review1Title" var="comp">--%>
                <%--<cms:component component="${comp}" element="strong" />--%>
                <%--</cms:pageSlot>--%>Mantap Banget
                </div>
                <div class="testimoni-card-content-desc">
                <%--<cms:pageSlot position="Review1Desc" var="comp">--%>
                <%--<cms:component component="${comp}" element="p" />--%>
                <%--</cms:pageSlot>--%>

                Kasur baru yang packing nya simple banget, masuk ke dalam box! Kasur @inthebox.id dengan teknologi Pocket Springbed ini enak banget, nyaman dan empuk! Ada Free Bantal dan Free Ongkirnya juga lhoo! Mantap banget

                </div>
                <div class="testimoni-card-content-datetime">
                <%--<cms:pageSlot position="Review1Datetime" var="comp">--%>
                <%--<cms:component component="${comp}" element="p" />--%>
                <%--</cms:pageSlot>--%>
                9 Sep 2020 - 11:22 am
                </div>

                </div>
                </div>
                </div>
                <div class="testimoni-card">
                <div class="testimoni-card-header">
                <div class="testimoni-card-header-name">
                <%--<cms:pageSlot position="Review1Name" var="comp">--%>
                <%--<cms:component component="${comp}" element="p" />--%>
                <%--</cms:pageSlot>--%>
                Baim Wong
                </div>
                <div class="testimoni-card-header-image">

                </div>
                </div>
                <div class="testimoni-card-body">
                <div class="testimoni-card-stars">
                <div class="total-stars">
                <%--<cms:pageSlot position="Review1TotalStars" var="feature">--%>
                <%--<cms:component component="${feature}" element="div" class="star-container star-review"/>--%>
                <%--</cms:pageSlot>--%>
                </div>
                </div>
                <div class="testimoni-card-content">
                <div class="testimoni-card-content-title">
                <%--<cms:pageSlot position="Review1Title" var="comp">--%>
                <%--<cms:component component="${comp}" element="strong" />--%>
                <%--</cms:pageSlot>--%>Mantap Banget
                </div>
                <div class="testimoni-card-content-desc">
                <%--<cms:pageSlot position="Review1Desc" var="comp">--%>
                <%--<cms:component component="${comp}" element="p" />--%>
                <%--</cms:pageSlot>--%>

                Kasur baru yang packing nya simple banget, masuk ke dalam box! Kasur @inthebox.id dengan teknologi Pocket Springbed ini enak banget, nyaman dan empuk! Ada Free Bantal dan Free Ongkirnya juga lhoo! Mantap banget

                </div>
                <div class="testimoni-card-content-datetime">
                <%--<cms:pageSlot position="Review1Datetime" var="comp">--%>
                <%--<cms:component component="${comp}" element="p" />--%>
                <%--</cms:pageSlot>--%>
                9 Sep 2020 - 11:22 am
                </div>

                </div>
                </div>
                </div>
            </div>
        </div>
    </section>
</div>
</template:page>
