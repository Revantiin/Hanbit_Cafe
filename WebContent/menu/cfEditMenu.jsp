<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>메뉴 등록</title>
	<link rel="stylesheet" type="text/css" href="css/shopping.css">
	<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<div id="wrap" align="center">
		<h1>메뉴 등록</h1>
		<form method="post" action="<%=myController%>" enctype="multipart/form-data">
		<input type="hidden" name="command" value="cfEditMenu">
		<table>
			<tr>
				<th>상품명</th>
				<td><input type="text" name="name" value="Cafe Latte"></td>
			</tr>
				<tr>
				<th>재고수량</th>
				<td><input type="text" name="stock" value="10"></td>
			</tr>
				<tr>
				<th>단가</th>
				<td><input type="text" name="price" value="4500"></td>
			</tr>
				<tr>
				<th>카테고리</th>
				<td>
					<select name="category">
						<option value="Espresso">Espresso
						<option value="Classic" selected="selected">Classic
						<option value="Frozen">Frozen
					</select>
				</td>
			</tr>
			<tr>
				<th>이미지</th>
				<td><input type="file" name="image"></td>
			</tr>
			<tr>
				<th>작성 일자</th>
				<td><input type="text" name="regdate" value="2016/01/08"></td>
			</tr>
			<tr>
				<th>설명</th>
				<td><textarea name="comments" rows="10" cols="80"></textarea></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="password" value="1"></td>
			</tr>
		</table>
			<br><br><br>
			<input type="submit" value="등록" onclick="return boardCheck();">
			<input type="reset" value="다시 작성">
			<input type="button" value="목록" onclick="location.href='<%=myList%>'">
		</form>
	</div>
</body>
</html>