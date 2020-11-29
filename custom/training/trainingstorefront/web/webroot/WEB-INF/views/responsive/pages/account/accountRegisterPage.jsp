<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>

<template:page pageTitle="${pageTitle}">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<cms:pageSlot position="TopRegisterSlot" var="feature" element="div" class="register-top-content-slot">
				<cms:component component="${feature}"  element="div" class="Register-Top-content-component"/>
			</cms:pageSlot>
		</div>
	</div>
</template:page>