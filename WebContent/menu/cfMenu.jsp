<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common.jsp" %>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>게시물 목록 보기</title>
	<link rel="stylesheet" type="text/css" href="css/shopping.css">
	<script type="text/javascript">
		function open_win(url, mode) {
			alert(url + '/' + mode);
			/* 해당 url을 open시 창의 이름을 mode로 설정한다. */
			/* window.open(url, mode, "width=500, height=230"); */
		}
		function gotoWriteForm( url ) {			
			location.href=url ; /* rewponse.sendRedirect()와 동일한 개념 */
		}		
	</script>	
</head>
<body>
	<div id="wrap" align="center">
		<h1>게시물 목록 보기</h1>
		<table class="list">
			<tr>
				<td colspan="3" style="border: white; text=align: left">
				총 100건
				</td>
				<td colspan="3" style="border: white; text=align: right">
					<input type="button" value="게시물등록"
					onclick="javascript:gotoWriteForm('<%=myEditMenu%>');">
				</td>
			</tr>
			<tr>
				<th>번호</th>
				<th>이름(상세보기)</th>
				<th>카테고리(수정하기)</th>
				<th>작성일(댓글)</th>
				<th>삭제</th>
				<th>조회</th>
			
			</tr>
			
		<c:forEach var="fashion" items="${fashionLists}">
			<c:set var="pagingParam" value="&id=${fashion.id}&pageNumber=${pageInfo.pageNumber}&pageSize=${pageInfo.pageSize}" />
			<c:set var="replyParam" value="&groupno=${fashion.groupno}&orderno=${fashion.orderno}&depth=${fashion.depth}" />
			<tr class="record">
				<td>${fashion.id}</td>
				<td>
					<a href= "<%=myReplyForm%>${pagingParam}${replyParam}">
						<c:forEach begin="1" end="${fashion.depth}" step="1">
							re:&nbsp;
						</c:forEach>
						${fashion.name }
					</a>
				</td>
				
				<td>
				<a href="#" onclick="javascript:open_win('<%=myChkPwdFrm%>${pagingParam}','update')"></a>
					${fashion.category}
				</td>
				<td>
					<a href= "<%=myReplyForm%>${pagingParam}${replyParam}">
						${fashion.name }
					</a>
				</td>
				<td>
					<input type="button" value="삭제"
					 onclick="javascript:open_win('<%=myChkPwdFrm%>${pagingParam}','delete')">
				
				</td>
				<td>${fashion.readcount}</td>
			</tr>
		</c:forEach>
		
		</table>
		<br>		
	</div>
</body>
</html>