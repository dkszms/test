<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<script src="recipeList.js"> alert("ddd");</script>
</head>
<body>
		레시피 목록
	<input type="text" id="recipe-name"/>
	<input type="button" value="검색" id="recipe-search"/>
	<input type="button" value="등록" id="recipe-regist"/>
	<table>
		<c:forEach var="map" items="${al}" varStatus="status">
			<tr id="recipe-detail">
				<td id="recipe-id">${map.id}</td>
				<td id="recipe-name">${map.name}</td>
				<td id="recipe-description">${map.description}</td>
			</tr>
		</c:forEach>
	</table>
	<input type="button" value="클릭" id="tttt"/>
</body>
</html>