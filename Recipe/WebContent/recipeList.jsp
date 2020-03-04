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
	<script src="recipeList.js"></script>
</head>
<body>
		레시피 목록
	<input type="text" id="recipe-name"/>
	<input type="button" value="검색" id="recipe-search"/>
	<input type="button" value="등록" id="recipe-regist"/>
	<table id="recipe-table">
		<c:forEach var="map" items="${al}" varStatus="status"> 
			<tr>
				<td id="recipe-id">${map.id}</td>
				<td>${map.name}</td>
				<td>${map.description}</td>
			</tr>
		</c:forEach>
	</table>
	<input type="button" value="클릭" id="tttt" />
	<button id="tt"">테스트 </button>
</body>
</html>