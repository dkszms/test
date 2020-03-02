<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
<%@page import="com.test.db.RecipeDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경's 요리 레시피</title>
	<style type="text/css">
	
		table{
			width : 50%;
			height: 30px; 
			border: 1px solid #444444;
		}
		
		th, td{
			border: 1px solid #444444;
		}
	</style>
	
</head>
<% 
	RecipeDB rdb = new RecipeDB();
	ArrayList<Map<String, Object>> al = rdb.recipe();
%>
<body>
	
		레시피 목록
	<table class="recipeTable">
		<c:forEach var="map" items="${al}" >
			<c:forEach var="list" items="${map}">
				<p>${list}</p>
			</c:forEach>
		</c:forEach>
	</table>
</body>

<script type="text/javascript" src = "index.js"></script>
</html>