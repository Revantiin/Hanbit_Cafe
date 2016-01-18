package mypkg.cafe.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.cafe.bean.MemberBean;
import mypkg.cafe.dao.CafeDao;

public class CafeMemberEditFormAction implements Action{
	@Override
	public void doAction(HttpServletRequest request,
			HttpServletResponse response, ServletContext context)
			throws ServletException, IOException {		
		String gotopage = "/Member/MemberEdit.jsp" ;
		
		String id = request.getParameter("id"); 
		CafeDao cdao = new CafeDao();
		MemberBean member = cdao.GetMemberById( id ) ;
		request.setAttribute("member", member); 		
		
		RequestDispatcher dispatcher 
		= request.getRequestDispatcher( gotopage ) ;
		
		dispatcher.forward(request, response); 
	}	
}
