<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="/common.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.ex{
	font-size: 13px;
	color: gray;
}
</style>
</head>
<body>
<h3 align="center">회원가입 페이지</h3>
<hr>
<br>
<form name="myform" action="<%=mySignin %>" method="get">
	<input type="hidden" name="command" value="cfSingin">
	<table>
	<tr><th width="100" align="left">아이디 : </th>
	<td><input type="text" name="id" id="id" size="20"></td></tr>
	<tr><th align="left">패스워드 : </th>
	<td><input type="password" name="pass" id="pass" size="21"></td></tr>
	<tr><th align="left">이름 : </th>
	<td><input type="text" name="name" id="name"></td></tr>
	<tr><th align="left">주소 : </th>
	<td><input type="text" name="address" id="address"></td></tr>
	<tr><th align="left">전화번호 : </th>
	<td><input type="text" name="phonenum" id="phonenum"></td>
	<td class="ex">숫자만 입력해주세요 &nbsp;예)021234567</td></tr>
	<tr><th align="left">핸드폰번호 : </th>
	<td><input type="text" name="cellphone" id="cellphone"></td>
	<td class="ex">숫자만 입력해주세요 &nbsp;예)01012345678</td></tr>
	</table>
	<input type="submit" value="가입하기">
	<input type="reset" value="다시쓰기">
	<input type="button" value="뒤로가기">
</form>
</body>
</html>