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


    <cms:pageSlot position="AboutUsPage" var="feature" element="div" class="aboutus-section1-slot">
        <cms:component component="${feature}" element="div" class="aboutus-section1-component"/>
    </cms:pageSlot>

    <div class="about">
        <div class="about-up">
            <div class="container">
                <div class="about-up-content">
                    <cms:pageSlot position="AboutUsPage2" var="feature" element="div" class="aboutus-section2-slot">
                        <cms:component component="${feature}" element="div"
                                       class="aboutus-section2-component"/>
                    </cms:pageSlot>
                </div>
            </div>
        </div>
        <div class="about-middle">
            <div class="container">
                <div class="about-middle-content">
                    <div class="row">

                        <div class="col-md-push-4 col-md-8 col-lg-8 col-xl-8">
                            <cms:pageSlot position="AboutUsPage15" var="feature" element="div"
                                          class="aboutus-image-right">
                                <cms:component component="${feature}" element="div"
                                               class="aboutus-section15-component"/>
                            </cms:pageSlot>
                        </div>

                        <div class="col-md-pull-8 col-md-4 col-lg-4 col-xl-4">
                            <div class="about-middle-pad">
                                <cms:pageSlot position="AboutUsPage3" var="feature" element="div"
                                              class="aboutus-section3-slot">
                                    <cms:component component="${feature}" element="div"
                                                   class="aboutus-section3-component"/>
                                </cms:pageSlot>
                            </div>
                            <a href="https://inthebox.id/id/apa-itu-kasur-inthebox"
                               class="about-middle-btn">Selengkapnya</a>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="about-middle-content">
                    <div class="row">
                        <div class="col-md-8 col-lg-8 col-xl-8">
                            <cms:pageSlot position="AboutUsPage16" var="feature" element="div"
                                          class="aboutus-image-left">
                                <cms:component component="${feature}" element="div"
                                               class="aboutus-section16-component"/>
                            </cms:pageSlot>
                        </div>
                        <div class="col-md-4 col-lg-4 col-xl-4">
                            <div class="about-middle-pad">
                                <cms:pageSlot position="AboutUsPage4" var="feature" element="div"
                                              class="aboutus-section4-slot">
                                    <cms:component component="${feature}" element="div"
                                                   class="aboutus-section4-component"/>
                                </cms:pageSlot>
                            </div>
                            <a href="https://inthebox.id/id/alasan-pilih-kasur-inthebox"
                               class="about-middle-btn">Selengkapnya</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="about-middle-content">
                    <div class="row">
                        <div class="col-md-push-4 col-md-8 col-lg-8 col-xl-8">
                            <cms:pageSlot position="AboutUsPage17" var="feature" element="div"
                                          class="aboutus-image-right">
                                <cms:component component="${feature}" element="div"
                                               class="aboutus-section17-component"/>
                            </cms:pageSlot>
                        </div>
                        <div class="col-md-pull-8 col-md-4 col-lg-4 col-xl-4">
                            <div class="about-middle-pad">
                                <cms:pageSlot position="AboutUsPage5" var="feature" element="div"
                                              class="aboutus-section5-slot">
                                    <cms:component component="${feature}" element="div"
                                                   class="aboutus-section5-component"/>
                                </cms:pageSlot>
                            </div>
                            <a href="https://inthebox.id/id/cara-beli-inthebox"
                               class="about-middle-btn">Selengkapnya</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


            <%--faq section--%>
        <div class="about-faq">
            <div class="container">
                <h1>
                    <cms:pageSlot position="AboutUsPage6" var="feature" element="div"
                                  class="aboutus-section6-slot">
                        <cms:component component="${feature}" element="div"
                                       class="aboutus-section6-component"/>
                    </cms:pageSlot>
                </h1>
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
    </div>


</template:page>



