<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<spring:htmlEscape defaultHtmlEscape="true"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<template:page pageTitle="${pageTitle}">

    <c:url value="/" var="homePageUrl"/>

    <cms:pageSlot position="AboutUsPage" var="feature" element="div" class="errorNotFoundPageBottom">
        <cms:component component="${feature}" element="div" class="errorNotFoundPageBottom-component"/>
    </cms:pageSlot>

    <div class="aboutus-head">
        <div class="container">
            <div class="head">
                <cms:pageSlot position="AboutUsPage2" var="feature" element="div" class="errorNotFoundPageMiddle">
                    <cms:component component="${feature}" element="div" class="errorNotFoundPageMiddle-component"/>
                </cms:pageSlot>
            </div>
        </div>
    </div>
    <div class="aboutus-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="padding">
                        <cms:pageSlot position="AboutUsPage3" var="feature" element="div"
                                      class="errorNotFoundPageMiddle">
                            <cms:component component="${feature}" element="div"
                                           class="errorNotFoundPageMiddle-component"/>
                        </cms:pageSlot>
                    </div>
                    <div class="read-more">
                        <a href="https://inthebox.id/id/apa-itu-kasur-inthebox" class="button">Selengkapnya</a>
                    </div>
                </div>
                <div class="col-md-8">
                    <img src="https://inthebox.id/images/layout-v2/about-image-1.png" class="first">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <img src="https://inthebox.id/images/layout-v2/about-image-2.png" class="second">
                </div>
                <div class="col-md-4">
                    <div class="padding">
                        <cms:pageSlot position="AboutUsPage4" var="feature" element="div"
                                      class="errorNotFoundPageMiddle">
                            <cms:component component="${feature}" element="div"
                                           class="errorNotFoundPageMiddle-component"/>
                        </cms:pageSlot>
                    </div>
                    <div class="read-more">
                        <a href="https://inthebox.id/id/alasan-pilih-kasur-inthebox" class="button">Selengkapnya</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="padding">
                        <cms:pageSlot position="AboutUsPage5" var="feature" element="div"
                                      class="errorNotFoundPageMiddle">
                            <cms:component component="${feature}" element="div"
                                           class="errorNotFoundPageMiddle-component"/>
                        </cms:pageSlot>
                    </div>
                    <div class="read-more">
                        <a href="https://inthebox.id/id/cara-beli-inthebox" class="button">Selengkapnya</a>
                    </div>
                </div>
                <div class="col-md-8">
                    <img src="https://inthebox.id/images/layout-v2/about-image-3.png" class="first">
                </div>
            </div>
        </div>
    </div>


    <%--faq section--%>
    <div class="faq">
        <div class="judul">
            <h2>
                <cms:pageSlot position="AboutUsPage6" var="feature" element="div"
                              class="errorNotFoundPageMiddle">
                    <cms:component component="${feature}" element="div"
                                   class="errorNotFoundPageMiddle-component"/>
                </cms:pageSlot>
            </h2>
        </div>

        <a href="#que1" class="question" data-toggle="collapse">
            <h2>
                <span class="expanded">+</span>
                <span class="collapse">-</span>
                <cms:pageSlot position="AboutUsPage7" var="feature" element="div"
                              class="errorNotFoundPageMiddle">
                    <cms:component component="${feature}" element="div"
                                   class="errorNotFoundPageMiddle-component"/>
                </cms:pageSlot></h2>
        </a>
        <div class="answer collapse" id="que1">
            <cms:pageSlot position="AboutUsPage8" var="feature" element="div"
                          class="errorNotFoundPageMiddle">
                <cms:component component="${feature}" element="div"
                               class="errorNotFoundPageMiddle-component"/>
            </cms:pageSlot>
        </div>
        <a href="#que2" class="question" data-toggle="collapse">
            <h2>
                <span class="expanded">+</span>
                <span class="collapse">-</span>
                <cms:pageSlot position="AboutUsPage9" var="feature" element="div"
                              class="errorNotFoundPageMiddle">
                    <cms:component component="${feature}" element="div"
                                   class="errorNotFoundPageMiddle-component"/>
                </cms:pageSlot></h2>
        </a>
        <div class="answer collapse" id="que2">
            <cms:pageSlot position="AboutUsPage10" var="feature" element="div"
                          class="errorNotFoundPageMiddle">
                <cms:component component="${feature}" element="div"
                               class="errorNotFoundPageMiddle-component"/>
            </cms:pageSlot>
        </div>
        <a href="#que3" class="question" data-toggle="collapse">
            <h2>
                <span class="expanded">+</span>
                <span class="collapse">-</span>
                <cms:pageSlot position="AboutUsPage11" var="feature" element="div"
                              class="errorNotFoundPageMiddle">
                    <cms:component component="${feature}" element="div"
                                   class="errorNotFoundPageMiddle-component"/>
                </cms:pageSlot></h2>
        </a>
        <div class="answer collapse" id="que3">
            <cms:pageSlot position="AboutUsPage12" var="feature" element="div"
                          class="errorNotFoundPageMiddle">
                <cms:component component="${feature}" element="div"
                               class="errorNotFoundPageMiddle-component"/>
            </cms:pageSlot>
        </div>
        <a href="#que4" class="question" data-toggle="collapse">
            <h2>
                <span class="expanded">+</span>
                <span class="collapse">-</span>
                <cms:pageSlot position="AboutUsPage13" var="feature" element="div"
                              class="errorNotFoundPageMiddle">
                    <cms:component component="${feature}" element="div"
                                   class="errorNotFoundPageMiddle-component"/>
                </cms:pageSlot>
            </h2>
        </a>
        <div class="answer collapse" id="que4">
            <cms:pageSlot position="AboutUsPage14" var="feature" element="div"
                          class="errorNotFoundPageMiddle">
                <cms:component component="${feature}" element="div"
                               class="errorNotFoundPageMiddle-component"/>
            </cms:pageSlot>
        </div>
    </div>


    <script>
        $('.question').click(function () {
            $(this).find('span').toggleClass('expanded collapse');
        });
    </script>


</template:page>



