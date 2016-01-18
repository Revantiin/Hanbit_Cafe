package mypkg.cafe.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mypkg.cafe.bean.MemberBean;
import mypkg.cafe.dao.CafeDao;

public class CafeLoginAction implements Action {
	@Override
	public void doAction(HttpServletRequest request,
			HttpServletResponse response, ServletContext context)
			throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		CafeDao dao = new CafeDao();
		String gotopage = "";
		HttpSession session = request.getSession();
		MemberBean member = null;
		try {
			member = dao.GetMemberById(request.getParameter("id"));	
			System.out.println(member);
			if(member.getId().equals(request.getParameter("id"))){
				session.setAttribute("Login", "in");
				session.setAttribute("member", member);
				request.setAttribute("member", member);
			}else{
				System.out.println("Can't Login");
			}
		} catch (Exception e) {
			System.out.println("member 못가져왔수다");
			e.printStackTrace();
		}
		
		gotopage = "/index.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage);
		
		dispatcher.forward(request, response);
	}
}
