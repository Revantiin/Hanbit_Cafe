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
<h3 align="center">ȸ������ ������</h3>
<hr>
<br>
<form name="myform" action="<%=mySignin %>" method="get">
	<input type="hidden" name="command" value="cfSingin">
	<table>
	<tr><th width="100" align="left">���̵� : </th>
	<td><input type="text" name="id" id="id" size="20"></td></tr>
	<tr><th align="left">�н����� : </th>
	<td><input type="password" name="pass" id="pass" size="21"></td></tr>
	<tr><th align="left">�̸� : </th>
	<td><input type="text" name="name" id="name"></td></tr>
	<tr><th align="left">�ּ� : </th>
	<td><input type="text" name="address" id="address"></td></tr>
	<tr><th align="left">��ȭ��ȣ : </th>
	<td><input type="text" name="phonenum" id="phonenum"></td>
	<td class="ex">���ڸ� �Է����ּ��� &nbsp;��)021234567</td></tr>
	<tr><th align="left">�ڵ�����ȣ : </th>
	<td><input type="text" name="cellphone" id="cellphone"></td>
	<td class="ex">���ڸ� �Է����ּ��� &nbsp;��)01012345678</td></tr>
	</table>
	<input type="submit" value="�����ϱ�">
	<input type="reset" value="�ٽþ���">
	<input type="button" value="�ڷΰ���">
</form>
</body>
</html>