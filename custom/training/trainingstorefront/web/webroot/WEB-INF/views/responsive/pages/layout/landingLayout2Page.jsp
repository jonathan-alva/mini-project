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
        <div class="container p-0">
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
        <%--Unboxing--%>
    </section>
    <div>
        <%--Testimoni--%>
    </div>
</div>

    <%--<div class="row no-margin">--%>
        <%--<div class="col-xs-12 col-md-6 no-space">--%>
            <%--<cms:pageSlot position="Section2A" var="feature" element="div" class="row no-margin">--%>
                <%--<cms:component component="${feature}" element="div" class="col-xs-12 col-sm-6 no-space yComponentWrapper"/>--%>
            <%--</cms:pageSlot>--%>
        <%--</div>--%>
        <%--<div class="col-xs-12 col-md-6 no-space">--%>
            <%--<cms:pageSlot position="Section2B" var="feature" element="div" class="row no-margin">--%>
                <%--<cms:component component="${feature}" element="div" class="col-xs-12 col-sm-6 no-space yComponentWrapper"/>--%>
            <%--</cms:pageSlot>--%>
        <%--</div>--%>
        <%--<div class="col-xs-12">--%>
            <%--<cms:pageSlot position="Section2C" var="feature" element="div" class="landingLayout2PageSection2C">--%>
                <%--<cms:component component="${feature}" element="div" class="yComponentWrapper"/>--%>
            <%--</cms:pageSlot>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<cms:pageSlot position="Section3" var="feature" element="div" class="row no-margin" >--%>
        <%--<cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>--%>
    <%--</cms:pageSlot>--%>

    <%--<cms:pageSlot position="Section4" var="feature" element="div" class="row no-margin">--%>
        <%--<cms:component component="${feature}" element="div" class="col-xs-6 col-md-3 no-space yComponentWrapper"/>--%>
    <%--</cms:pageSlot>--%>

    <%--<cms:pageSlot position="Section5" var="feature" element="div">--%>
        <%--<cms:component component="${feature}" element="div" class="yComponentWrapper"/>--%>
    <%--</cms:pageSlot>--%>

</template:page>
