<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/CafeCtrl" method="post" class="myform">
<input type="hidden" name="command" value="cfLogin">
<table align="center" height="20%">
	<tr>
		<th>Id : </td>
		<td width="5%"></td>
		<td><input type="text" name="id" id="id"></td>
		<td width="10%"></td>
		<th>Password : </td>
		<td width="5%"></td>
		<td><input type="password" name="password" id="password"></td>
		<td width="10%"></td>
		<td><input type="submit" value="Log in"></td>
	</tr>
</table>

</form>
</body>
</html>