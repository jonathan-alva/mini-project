<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<template:page pageTitle="${pageTitle}">
	<cms:pageSlot position="Section1" var="comp" element="div" class="productDetailsPageSection1">
		<cms:component component="${comp}" element="div" class="productDetailsPageSection1-component"/>
	</cms:pageSlot>
	<product:productDetailsPanel />
	<section class="catalog">
		<div class="container">
			<div>
				<div class="row d-flex justify-content ">
					<product:productVariantListerGridItem product="${product}" />
				</div>
			</div>
			<div class="catalog-allbtn text-center">
				<cms:pageSlot position="AllProductButtonLink" var="comp">
					<cms:component component="${comp}" element="div" class="btn btn-brand"/>
				</cms:pageSlot>
			</div>
		</div>
	</section>
	<%--<product:productVariantListerGridItem product="${product}" />--%>
<%--	<cms:pageSlot position="CrossSelling" var="comp" element="div" class="productDetailsPageSectionCrossSelling">--%>
<%--		<cms:component component="${comp}" element="div" class="productDetailsPageSectionCrossSelling-component"/>--%>
<%--	</cms:pageSlot>--%>
<%--	<cms:pageSlot position="Section3" var="comp" element="div" class="productDetailsPageSection3">--%>
<%--		<cms:component component="${comp}" element="div" class="productDetailsPageSection3-component"/>--%>
<%--	</cms:pageSlot>--%>
<%--	<cms:pageSlot position="UpSelling" var="comp" element="div" class="productDetailsPageSectionUpSelling">--%>
<%--		<cms:component component="${comp}" element="div" class="productDetailsPageSectionUpSelling-component"/>--%>
<%--	</cms:pageSlot>--%>
<%--	<product:productPageTabs />--%>
<%--	<cms:pageSlot position="Section4" var="comp" element="div" class="productDetailsPageSection4">--%>
<%--		<cms:component component="${comp}" element="div" class="productDetailsPageSection4-component"/>--%>
<%--	</cms:pageSlot>--%>
</template:page>