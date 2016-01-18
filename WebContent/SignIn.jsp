<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hanbit Cafe 회원가입 페이지</title>
	<style type="text/css">
	.ex{
		font-size: 13px;
		color: gray;
	}
	</style>
	<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("form").submit(function(){
			if(isNAN($("#phonenum").val())){
				alert("숫자만 입력해 주세요");
				$("#phonenum").focus();
				return false;
			}else if(isNAN($("#phonenum").val())){
				alert("숫자만 입력하라니까?");
				$("#cellphone").focus();
				return false;
			}
		});
		
	});
	</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<br><br><br><br><br><br>
<h3 align="center">회원가입 페이지</h3>
<hr>
<br>
<form name="myform" action="<%=mySignin %>" method="post">
	<input type="hidden" name="command" value="cfSingin">
	<table align="center">
	<tr height="50"><th width="100" align="left">아이디 : </th>
	<td><input type="text" name="id" id="id" size="20" placeholder="반드시 입력해주세요" required></td></tr>
	<tr height="50"><th align="left">패스워드 : </th>
	<td><input type="password" name="pass" id="pass" size="20" placeholder="반드시 입력해주세요" required></td></tr>
	<tr height="50"><th align="left">이름 : </th>
	<td><input type="text" name="name" id="name" placeholder="반드시 입력해주세요" required></td></tr>
	<tr height="50"><th align="left">주소 : </th>
	<td><input type="text" name="address" id="address"></td></tr>
	<tr height="50"><th align="left">전화번호 : </th>
	<td><input type="text" name="phonenum" id="phonenum" placeholder="숫자만 입력해주세요"></td>
	<td class="ex">예)021234567</td></tr>
	<tr height="50"><th align="left">핸드폰번호 : </th>
	<td><input type="text" name="cellphone" id="cellphone" placeholder="숫자만 입력해주세요"></td>
	<td class="ex">예)01012345678</td></tr>
	</table><br><br>
	<div align="center">
	<input type="submit" value="가입하기">
	<input type="reset" value="다시쓰기">
	<input type="button" value="뒤로가기" onclick="location.href='index.jsp'">
	</div>
</form>
</body>
</html>