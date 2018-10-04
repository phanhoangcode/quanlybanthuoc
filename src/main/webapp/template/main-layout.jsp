<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title><tiles:getAsString name="title" /></title>
<tiles:insertAttribute name="common-css" />

<link rel="stylesheet"
	href="<tiles:insertAttribute name="stylesheets"/>">

</head>
<body>
	<div class="wrapper">
		<tiles:insertAttribute name="header" />
		<main class="wrap-content">
		<div class="container-fluid">
			<div class="row">
				<tiles:insertAttribute name="sidebar" />
				<tiles:insertAttribute name="body" />
			</div>
		</div>
		</main>
		<%-- <tiles:insertAttribute name="footer" /> --%>
	</div>

	<!-- JAVASCRIPTS -->
	<tiles:insertAttribute name="common-js" />
	<script src="<tiles:insertAttribute name="javascripts"/>"></script>
	<script src="lib/js/paginate.js"></script>
</body>
</html>