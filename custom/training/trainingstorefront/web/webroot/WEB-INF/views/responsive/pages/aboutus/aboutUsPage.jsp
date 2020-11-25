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
    <div class="wrapper">
    <c:url value="/" var="homePageUrl"/>


        <cms:pageSlot position="AboutUsPage" var="feature" element="div" class="aboutus-section1-slot">
            <cms:component component="${feature}" element="div" class="aboutus-section1-component"/>
        </cms:pageSlot>

        <div class="aboutus-head">
            <div class="container-aboutus">
                <div class="head">
                    <cms:pageSlot position="AboutUsPage2" var="feature" element="div" class="aboutus-section2-slot">
                        <cms:component component="${feature}" element="div"
                                       class="aboutus-section2-component"/>
                    </cms:pageSlot>
                </div>
            </div>
        </div>
        <div class="aboutus-wrapper">
            <div class="container-aboutus">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="padding">
                            <cms:pageSlot position="AboutUsPage3" var="feature" element="div"
                                          class="aboutus-section3-slot">
                                <cms:component component="${feature}" element="div"
                                               class="aboutus-section3-component"/>
                            </cms:pageSlot>
                        </div>
                        <div class="read-more">
                            <a href="https://inthebox.id/id/apa-itu-kasur-inthebox" class="button">Selengkapnya</a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="image1">
                            <cms:pageSlot position="AboutUsPage15" var="feature" element="div"
                                          class="aboutus-section15-slot">
                                <cms:component component="${feature}" element="div"
                                               class="aboutus-section15-component"/>
                            </cms:pageSlot>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-aboutus">
                <div class="row">
                    <div class="col-md-8">
                        <div class="image2">
                            <cms:pageSlot position="AboutUsPage16" var="feature" element="div"
                                          class="aboutus-section16-slot">
                                <cms:component component="${feature}" element="div"
                                               class=" aboutus-section16-component"/>
                            </cms:pageSlot>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="padding">
                            <cms:pageSlot position="AboutUsPage4" var="feature" element="div"
                                          class="aboutus-section4-slot">
                                <cms:component component="${feature}" element="div"
                                               class="aboutus-section4-component"/>
                            </cms:pageSlot>
                        </div>
                        <div class="read-more">
                            <a href="https://inthebox.id/id/alasan-pilih-kasur-inthebox" class="button">Selengkapnya</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-aboutus">
                <div class="row">
                    <div class="col-md-4">
                        <div class="padding">
                            <cms:pageSlot position="AboutUsPage5" var="feature" element="div"
                                          class="aboutus-section5-slot">
                                <cms:component component="${feature}" element="div"
                                               class="aboutus-section5-component"/>
                            </cms:pageSlot>
                        </div>
                        <div class="read-more">
                            <a href="https://inthebox.id/id/cara-beli-inthebox" class="button">Selengkapnya</a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="image1">
                            <cms:pageSlot position="AboutUsPage17" var="feature" element="div"
                                          class="aboutus-section17-slot">
                                <cms:component component="${feature}" element="div"
                                               class="aboutus-section17-component"/>
                            </cms:pageSlot>
                        </div>
                    </div>
                </div>
            </div>
        </div>


            <%--faq section--%>
        <div class="faq">
            <div class="judul">
                <h1 class="title-aboutus"><cms:pageSlot position="AboutUsPage6" var="feature" element="div"
                                                        class="aboutus-section6-slot">
                    <cms:component component="${feature}" element="div"
                                   class="aboutus-section6-component"/>
                </cms:pageSlot>
                </h1>
            </div>

            <a href="#que1" class="question" data-toggle="collapse">
                <h3>
                    <cms:pageSlot position="AboutUsPage7" var="feature" element="div"
                                  class="aboutus-section7-slot">
                        <cms:component component="${feature}" element="div"
                                       class="yComponentWrapper aboutus-section7-component"/>
                    </cms:pageSlot></h3>
            </a>
            <div class="answer collapse" id="que1">
                <cms:pageSlot position="AboutUsPage8" var="feature" element="div"
                              class="aboutus-section8-slot">
                    <cms:component component="${feature}" element="div"
                                   class="yComponentWrapper aboutus-section8-component"/>
                </cms:pageSlot>
            </div>
            <a href="#que2" class="question" data-toggle="collapse">
                <h3>
                    <cms:pageSlot position="AboutUsPage9" var="feature" element="div"
                                  class="aboutus-section9-slot">
                        <cms:component component="${feature}" element="div"
                                       class="yComponentWrapper aboutus-section9-component"/>
                    </cms:pageSlot></h3>
            </a>
            <div class="answer collapse" id="que2">
                <cms:pageSlot position="AboutUsPage10" var="feature" element="div"
                              class="aboutus-section10-slot">
                    <cms:component component="${feature}" element="div"
                                   class="yComponentWrapper aboutus-section10-component"/>
                </cms:pageSlot>
            </div>
            <a href="#que3" class="question" data-toggle="collapse">
                <h3>
                    <cms:pageSlot position="AboutUsPage11" var="feature" element="div"
                                  class="aboutus-section11-slot">
                        <cms:component component="${feature}" element="div"
                                       class="yComponentWrapper aboutus-section11-component"/>
                    </cms:pageSlot></h3>
            </a>
            <div class="answer collapse" id="que3">
                <cms:pageSlot position="AboutUsPage12" var="feature" element="div"
                              class="aboutus-section12-slot">
                    <cms:component component="${feature}" element="div"
                                   class="yComponentWrapper aboutus-section12-component"/>
                </cms:pageSlot>
            </div>
            <a href="#que4" class="question" data-toggle="collapse">
                <h3>
                    <cms:pageSlot position="AboutUsPage13" var="feature" element="div"
                                  class="aboutus-section13-slot">
                        <cms:component component="${feature}" element="div"
                                       class="yComponentWrapper aboutus-section13-component"/>
                    </cms:pageSlot>
                </h3>
            </a>
            <div class="answer collapse" id="que4">
                <cms:pageSlot position="AboutUsPage14" var="feature" element="div"
                              class="aboutus-section14-slot">
                    <cms:component component="${feature}" element="div"
                                   class="yComponentWrapper aboutus-section14-component"/>
                </cms:pageSlot>
            </div>
        </div>

    </div>

    <script>
        $('.question').click(function () {
            $(this).find('span').toggleClass('expanded collapse');
        });
    </script>
</template:page>



