package mypkg.cafe.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CafeLogoutAction implements Action{
	@Override
	public void doAction(HttpServletRequest request,
			HttpServletResponse response, ServletContext context)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("Login");
		session.removeAttribute("member");
		
		String gotopage = "/index.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage);
		
		dispatcher.forward(request, response);
	}

}
