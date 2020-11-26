<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav" %>

<spring:htmlEscape defaultHtmlEscape="true" />

<spring:url value="/cart/miniCart/{/totalDisplay}" var="refreshMiniCartUrl" htmlEscape="false">
	<spring:param name="totalDisplay"  value="${totalDisplay}"/>
</spring:url>
<spring:url value="/cart/rollover/{/componentUid}" var="rolloverPopupUrl" htmlEscape="false">
	<spring:param name="componentUid"  value="${component.uid}"/>
</spring:url>
<c:url value="/cart" var="cartUrl"/>

<c:if test="${component.visible}">
	<nav class="navigation navigation--bottom js_navigation--bottom js-enquire-offcanvas-navigation" role="navigation">
		<ul class="sticky-nav-top hidden-lg hidden-md js-sticky-user-group hidden-md hidden-lg">
                <%--Dynamically generated by 'acc.navigation.js"--%>
        </ul>
		<div class="navigation__overflow container">
			<ul data-trigger="#signedInUserOptionsToggle" class="nav__links nav__links--products nav__links--mobile js-userAccount-Links js-nav-collapse-body offcanvasGroup1 collapse in hidden-md hidden-lg">
                   <%--Dynamically generated by 'acc.navigation.js"--%>
           	</ul>
           	<ul class="nav__links nav__links--products js-offcanvas-links">
				<li>
					<div class="nav-logo">
						<cms:pageSlot position="SiteLogo" var="logo" limit="1">
							<cms:component component="${logo}" element="div" class="yComponentWrapper"/>
						</cms:pageSlot>
					</div>
				</li>
				<li>
					<div>
						<ul class="navigation-middle">
							<c:forEach items="${component.navigationNode.children}" var="childLevel1">
								<li class="auto nav__links--primary <c:if test="${not empty childLevel1.children}">nav__links--primary-has__sub js-enquire-has-sub</c:if>">
									<c:forEach items="${childLevel1.entries}" var="childlink1">
										<cms:component component="${childlink1.item}" evaluateRestriction="true" element="span" class="nav__link js_nav__link" />
									</c:forEach>

										<%-- Calculate how many sub columns are needed -- Start --%>
									<c:set var="totalSubNavigationColumns" value="${0}"/>
									<c:set var="hasSubChild" value="false"/>
									<c:forEach items="${childLevel1.children}" var="childLevel2">
										<c:if test="${not empty childLevel2.children}">
											<c:set var="hasSubChild" value="true"/>
											<c:set var="subSectionColumns" value="${fn:length(childLevel2.children)/component.wrapAfter}"/>
											<c:if test="${subSectionColumns > 1 && fn:length(childLevel2.children)%component.wrapAfter > 0}">
												<c:set var="subSectionColumns" value="${subSectionColumns + 1}"/>
											</c:if>
											<c:choose>
												<c:when test="${subSectionColumns > 1}">
													<c:set var="totalSubNavigationColumns" value="${totalSubNavigationColumns + subSectionColumns}" />
												</c:when>

												<c:when test="${subSectionColumns < 1}">
													<c:set var="totalSubNavigationColumns" value="${totalSubNavigationColumns + 1}" />
												</c:when>
											</c:choose>
										</c:if>
									</c:forEach>
										<%-- Calculate how many sub columns are needed -- End --%>

										<%-- Decide which class to use -- Start --%>
									<c:choose>
										<c:when test="${!hasSubChild || (totalSubNavigationColumns > 0 && totalSubNavigationColumns <= 1)}">
											<c:set value="col-md-3 col-lg-2" var="subNavigationClass"/>
											<c:set value="col-md-12" var="subNavigationItemClass"/>
										</c:when>

										<c:when test="${totalSubNavigationColumns == 2}">
											<c:set value="col-md-6 col-lg-4" var="subNavigationClass"/>
											<c:set value="col-md-6" var="subNavigationItemClass"/>
										</c:when>

										<c:when test="${totalSubNavigationColumns == 3}">
											<c:set value="col-md-9 col-lg-6" var="subNavigationClass"/>
											<c:set value="col-md-4" var="subNavigationItemClass"/>
										</c:when>

										<c:when test="${totalSubNavigationColumns == 4}">
											<c:set value="col-md-12 col-lg-8" var="subNavigationClass"/>
											<c:set value="col-md-3" var="subNavigationItemClass"/>
										</c:when>

										<c:when test="${totalSubNavigationColumns == 5}">
											<c:set value="col-md-12" var="subNavigationClass"/>
											<%--custom grid class required because 1/5th columns aren't supported by bootstrap--%>
											<c:set value="column-20-percent" var="subNavigationItemClass"/>
										</c:when>

										<c:when test="${totalSubNavigationColumns > 5}">
											<c:set value="col-md-12" var="subNavigationClass"/>
											<c:set value="col-md-2" var="subNavigationItemClass"/>
										</c:when>
									</c:choose>
										<%-- Decide which class to use -- End --%>

									<c:if test="${not empty childLevel1.children}"><span class="glyphicon  glyphicon-chevron-right hidden-md hidden-lg nav__link--drill__down js_nav__link--drill__down"></span>
										<div class="sub__navigation js_sub__navigation ${fn:escapeXml(subNavigationClass)}">
											<a class="sm-back js-enquire-sub-close hidden-md hidden-lg" href="#">Back</a>
											<div class="row">
												<c:choose>
													<c:when test="${hasSubChild}">
														<c:forEach items="${childLevel1.children}" var="childLevel2">
															<div class="sub-navigation-section ${fn:escapeXml(subNavigationItemClass)}">
															<c:if test="${not empty childLevel2.title}">
																<div class="title">${fn:escapeXml(childLevel2.title)}</div>
															</c:if>
															<ul class="sub-navigation-list <c:if test="${not empty childLevel2.title}">has-title</c:if>">
															<c:forEach items="${childLevel2.children}" var="childLevel3" step="${component.wrapAfter}" varStatus="i">
																<%-- wrap if more than 'component.wrapAfter' rows in one sub column --%>
																<c:if test="${i.index>=component.wrapAfter}">
																	<c:if test="${!i.first}">
																		</ul>
																		</div>
																	</c:if>
																	<div class="sub-navigation-section ${fn:escapeXml(subNavigationItemClass)}">
																	<ul class="sub-navigation-list <c:if test="${not empty childLevel2.title}">has-title</c:if>">
																</c:if>
																<c:forEach items="${childLevel2.children}" var="childLevel3" begin="${i.index}" end="${i.index + component.wrapAfter - 1}">
																	<c:forEach items="${childLevel3.entries}" var="childlink3" >
																		<cms:component component="${childlink3.item}" evaluateRestriction="true" element="li" class="nav__link--secondary" />
																	</c:forEach>
																</c:forEach>
															</c:forEach>
															</ul>
															</div>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<div class="sub-navigation-section ${fn:escapeXml(subNavigationItemClass)}">
															<ul class="sub-navigation-list <c:if test="${not empty childLevel2.title}">has-title</c:if>">
																<c:forEach items="${childLevel1.children}" var="childLevel2">
																	<c:forEach items="${childLevel2.entries}" var="childlink2">
																		<cms:component component="${childlink2.item}" evaluateRestriction="true" element="li" class="nav__link--secondary" />
																	</c:forEach>
																</c:forEach>
															</ul>
														</div>
													</c:otherwise>
												</c:choose>
											</div>
										</div>
									</c:if>
								</li>
							</c:forEach>
						</ul>
					</div>
				</li>
				<li>
					<div>
						<ul>
							<li>
								<ul class="nav__links nav__links--account">
									<c:if test="${empty hideHeaderLinks}">
										<c:if test="${uiExperienceOverride}">
											<li class="backToMobileLink">
												<c:url value="/_s/ui-experience?level=" var="backToMobileStoreUrl"/>
												<a href="${fn:escapeXml(backToMobileStoreUrl)}">
													<spring:theme code="text.backToMobileStore"/>
												</a>
											</li>
										</c:if>

										<sec:authorize access="!hasAnyRole('ROLE_ANONYMOUS')">
											<c:set var="maxNumberChars" value="25"/>
											<c:if test="${fn:length(user.firstName) gt maxNumberChars}">
												<c:set target="${user}" property="firstName"
													   value="${fn:substring(user.firstName, 0, maxNumberChars)}..."/>
											</c:if>

											<li class="logged_in js-logged_in">
												<ycommerce:testId code="header_LoggedUser">
													<spring:theme code="header.welcome"
																  arguments="${user.firstName},${user.lastName}"/>
												</ycommerce:testId>
											</li>
										</sec:authorize>

										<cms:pageSlot position="HeaderLinks" var="link">
											<cms:component component="${link}" element="li"/>
										</cms:pageSlot>

										<sec:authorize access="hasAnyRole('ROLE_ANONYMOUS')">
											<li class="liOffcanvas acc-btn">
												<ycommerce:testId code="header_Login_link">
													<c:url value="/login" var="loginUrl"/>
													<a href="${fn:escapeXml(loginUrl)}">
														<spring:theme code="header.link.login"/>
													</a>
												</ycommerce:testId>
											</li>
										</sec:authorize>

										<sec:authorize access="!hasAnyRole('ROLE_ANONYMOUS')">
											<li class="liOffcanvas acc-btn">
												<ycommerce:testId code="header_signOut">
													<c:url value="/logout" var="logoutUrl"/>
													<a href="${fn:escapeXml(logoutUrl)}">
														<spring:theme code="header.link.logout"/>
													</a>
												</ycommerce:testId>
											</li>
										</sec:authorize>

									</c:if>
								</ul>
							</li>
							<li>
								<div class="nav-cart">
									<a 	href="${fn:escapeXml(cartUrl)}"
										  class="mini-cart-link "
										  <%--data-mini-cart-url="${fn:escapeXml(rolloverPopupUrl)}"--%>
										  <%--data-mini-cart-refresh-url="${fn:escapeXml(refreshMiniCartUrl)}"--%>
										  <%--data-mini-cart-name="<spring:theme code="text.cart"/>"--%>
										  <%--data-mini-cart-empty-name="<spring:theme code="popup.cart.empty"/>"--%>
										  <%--data-mini-cart-items-text="<spring:theme code="basket.items"/>"--%>
									>
										<div class="mini-cart-icon">

											<span class="glyphicon glyphicon-shopping-cart "></span>
										</div>
									</a>
								</div>
							</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</nav>
</c:if>