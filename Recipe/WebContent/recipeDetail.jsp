<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요리순서</title>
	 <style type="text/css">
		table{
			width : 100%;
			height: 30px; 
			border: 1px solid #444444;
		}
		
		th, td{
			border: 1px solid #444444;
		}
	</style>
</head>
<body>
	브랜디에 절인 체리
	<table class="recipeTable">
		<tr>
				<td>No</td>
				<td>설명</td>
				<td>재료</td>
				<td>재료</td>
				<td>재료</td>
				<td>재료</td>
				<td>재료</td>
				
		</tr>
		<c:forEach var="map" items="${stepAL}">
			<tr>
				<td>${map.id}</td>
				<td>${map.step}</td>
				<td>${map.description}</td>
				<td>${map.num}</td>
				<td>${map.name}</td>
				<td>${map.amount}</td>
				<td>${map.unit}</td>
				
			</tr>	
		</c:forEach>
	</table>
</body>
</html>