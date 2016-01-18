package mypkg.cafe.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.cafe.dao.CafeDao;

public class CafeDeleteMemberAction implements Action{
	@Override
	public void doAction(HttpServletRequest request,
			HttpServletResponse response, ServletContext context)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		CafeDao dao = new CafeDao();
		
		int cnt = -1;
		cnt = dao.DeleteMember(request.getParameter("memberid"));
		
		if(cnt != -1){
			String gotopage = "/index.jsp"; 
			RequestDispatcher dispatcher 
			= request.getRequestDispatcher( gotopage ) ;
			
			dispatcher.forward(request, response); 
		}
	}
}
