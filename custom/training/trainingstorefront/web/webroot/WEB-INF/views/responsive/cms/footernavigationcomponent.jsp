<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="footer" tagdir="/WEB-INF/tags/responsive/common/footer"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:if test="${component.visible}">
	<div class="container">
	    <div class="footer__top">
	        <div class="row">
				<div class="footer__left col-xs-12 col-sm-12 col-md-6">
					<div>
						<div>
							Logo
						</div>
						<div>

						</div>
						<div>

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
	                                   <c:forEach items="${childLevel1.children}" var="childLevel2" begin="${i.index}" end="${i.index + component.wrapAfter - 1}">
	                                        <c:forEach items="${childLevel2.entries}" var="childlink" >
		                                        <cms:component component="${childlink.item}" evaluateRestriction="true" element="li" class="footer__link"/>
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
					<cms:pageSlot position="PhoneNumber" var="comp" >
						<cms:component component="${comp}" element="div" class="display-flex footer-bottom-text"/>
					</cms:pageSlot>
				</div>
				<div class="display-flex">
					<cms:pageSlot position="TextNumberImg" var="feature">
						<cms:component component="${feature}" element="div" class="display-flex"/>
					</cms:pageSlot>
					<cms:pageSlot position="TextNumber" var="comp">
						<cms:component component="${comp}" element="div" class="display-flex footer-bottom-text"/>
					</cms:pageSlot>
				</div>
			</div>
			<div class="footer__copyright display-flex">
				<div class="">${fn:escapeXml(notice)}</div>
			</div>
		</div>
	</div>
</c:if>