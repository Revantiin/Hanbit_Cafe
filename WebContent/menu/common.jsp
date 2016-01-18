<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	//String webServerPath = application.getRealPath("upload") ;
	String webServerPath = config.getServletContext().getRealPath("upload") + "\\" ;
	
	//컨텍스트 경로를 보여 준다.
	String contextPath = request.getContextPath() ;	

	String myController = "CafeCtrl" ;
	String cmd = "?command=" ;
	String myList = myController + cmd + "cfList" ; // 목록 보기
	String myDetailview = myController + cmd + "cfDetailView" ; //상세 보기
	String myEditMenu = myController + cmd + "cfEditMenu"; // 메뉴 추가
	
	//수정 또는 삭제 버튼 클릭
	String myChkPwdFrm = myController + cmd + "fsCheckPasswordForm" ; 
	String myChkPwd = myController + cmd + "fsCheckPassword" ; //비번이 맞는지 체크
	
	//수정 모드에서 비번 입력을 성공하면 이동된는 페이지
	String myUpdateForm = myController + cmd + "fsUpdateForm" ; 
	String myUpdate = "update" ; //게시물 수정하기
	String myDelete = myController + cmd + "fsDelete" ; //게시물 삭제하기
	String myWriteForm = myController + cmd + "fsWriteForm" ;
	
	//댓글 관련 추가사항
	String myReplyForm = myController + cmd + "fsReplyForm" ;
	String myReply = "fsReply" ; // 댓글달기
%>
</body>
</html>