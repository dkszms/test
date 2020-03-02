<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	<label>레시피명</label>
	<input type="text" name="recipe">
	</div>
	<div>
	<label>간단설명</label>
	<input type="text" name="description">
	</div>
	
	<table>
		<th>
		</th>
		<tr>
			<td>
				<label>설명</label>
				<input type="text" name="description">
			</td>
			<td>
				<label>재료</label>
				<input type="text" name="description">
			</td>
		</tr>
	</table>
	<input type="button" id="addrow" name="addrow" value="추가" onclick="rowAdd()">
	
</body>
</html>