<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="footer" tagdir="/WEB-INF/tags/responsive/common/footer" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:if test="${component.visible}">
    <div class="container">
        <div class="footer__top">
            <div class="row">
                <div class="footer__left col-xs-12 col-sm-12 col-md-6">
                    <div>
                        <div class="footer-logo">
                            <%--<div>${fn:escapeXml(footerLogo)}</div>--%>
                            <div class="display-flex footer-bottom-text">
                                <cms:pageSlot position="SiteLogo" var="logo" limit="1">
                                    <cms:component component="${logo}" element="div" class="yComponentWrapper"/>
                                </cms:pageSlot>
                            </div>
                        </div>
                        <div>
                            <form style="margin-top:30px" action="#" method="get">
                                <div class="display-flex align-items-center">
                                    <div class="flex-fill">
                                        <input class="email-input" type="text" placeholder="Masukan Alamat Email"
                                               style="width:100%"/>
                                    </div>
                                    <div class="ml-3 mr-5">
                                        <button class="btn btn-brand reverse">Submit</button>
                                    </div>
                                </div>

                            </form>
                        </div>
                        <div class="social-media">
                            <a class="px-4 footer-icon" target="_blank">
                                <i class="fa fa-facebook fa-2x" aria-hidden="true"></i>
                            </a>
                            <a class="px-4 footer-icon" target="_blank">
                                <i class="fa fa-instagram fa-2x" aria-hidden="true"></i>
                            </a>
                            <a class="px-4 footer-icon" target="_blank">
                                <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="footer__right col-xs-12 col-md-6">
                    <div class="row">
                        <c:forEach items="${component.navigationNode.children}" var="childLevel1">
                            <c:forEach items="${childLevel1.children}" step="${component.wrapAfter}" varStatus="i">
                                <div class="footer__nav--container col-xs-12 col-sm-4">
                                    <c:if test="${component.wrapAfter > i.index}">
                                        <div class="title">${fn:escapeXml(childLevel1.title)}</div>
                                    </c:if>
                                    <ul class="footer__nav--links">
                                        <c:forEach items="${childLevel1.children}" var="childLevel2" begin="${i.index}"
                                                   end="${i.index + component.wrapAfter - 1}">
                                            <c:forEach items="${childLevel2.entries}" var="childlink">
                                                <cms:component component="${childlink.item}" evaluateRestriction="true"
                                                               element="li" class="footer__link"/>
                                            </c:forEach>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </c:forEach>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer__bottom">
        <div class="display-flex flex-wrap justify-content-between container-fluid wrapper">
            <div class="footer-contact display-flex flex-wrap">
                <div class="display-flex mr-5 flex-wrap">
                    <cms:pageSlot position="PhoneNumberImg" var="feature">
                        <cms:component component="${feature}" element="div" class="display-flex"/>
                    </cms:pageSlot>
                    <div class="display-flex footer-bottom-text">${fn:escapeXml(phoneNumber)}</div>
                </div>
                <div class="display-flex">
                    <cms:pageSlot position="TextNumberImg" var="feature">
                        <cms:component component="${feature}" element="div" class="display-flex"/>
                    </cms:pageSlot>
                    <div class="display-flex footer-bottom-text">${fn:escapeXml(textNumber)}</div>
                </div>
            </div>
            <div class="footer__copyright display-flex">
                <div class="">${fn:escapeXml(notice)}</div>
            </div>
        </div>
    </div>
</c:if>