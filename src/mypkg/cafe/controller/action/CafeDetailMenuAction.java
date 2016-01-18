package mypkg.cafe.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.cafe.bean.MenuBean;
import mypkg.cafe.dao.MenuDao;

public class CafeDetailMenuAction implements Action {

	@Override
	public void doAction(HttpServletRequest request,
			HttpServletResponse response, ServletContext context)
			throws ServletException, IOException {
		
		int id =Integer.parseInt(request.getParameter("no"));
		MenuDao dao = new MenuDao();
		MenuBean menu = dao.GetMenuById(id);
		request.setAttribute("menu", menu );//바이딩하고
		String gotopage ="/menu/cfDetailview.jsp";
		RequestDispatcher dispatcher
		= request.getRequestDispatcher(gotopage);
		dispatcher.forward(request, response);
	}

}
