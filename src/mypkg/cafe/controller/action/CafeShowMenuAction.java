package mypkg.cafe.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.cafe.bean.MenuBean;
import mypkg.cafe.dao.MenuDao;

public class CafeShowMenuAction implements Action {

	@Override
	public void doAction(HttpServletRequest request,
			HttpServletResponse response, ServletContext context)
			throws ServletException, IOException {
		
		MenuDao mdao = new MenuDao();
		
		int beginRow =1;
		int endRow =10;
		List<MenuBean> menuLists = mdao.GetMenuList(beginRow, endRow);
		
		request.setAttribute("cfShowMenu", menuLists);
		
		String gotopage ="/menu/cfMenu.jsp" ;
		RequestDispatcher dispatcher
		= request.getRequestDispatcher(gotopage);
		
		dispatcher.forward(request, response);
	}
}
