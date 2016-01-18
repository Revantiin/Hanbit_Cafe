package mypkg.cafe.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.cafe.bean.MenuBean;
import mypkg.cafe.dao.MenuDao;

public class CafeEditMenuAction implements Action{
	@Override
	public void doAction(HttpServletRequest request,
			HttpServletResponse response, ServletContext context)
			throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			
		MenuBean menu = new MenuBean();
		menu.setNo( Integer.parseInt( request.getParameter("no")) );
		menu.setName( request.getParameter("name") );
		menu.setPrice( Integer.parseInt( request.getParameter("price")) );
		menu.setCategory( request.getParameter("category") );
		menu.setImage( request.getParameter("image") );
		menu.setDesc( request.getParameter("desc") );
		menu.setWeight( Integer.parseInt( request.getParameter("weight")) );
		menu.setSize( request.getParameter("size") );
		menu.setCalories( Integer.parseInt( request.getParameter("calories")) );
		menu.setCarbs( Integer.parseInt( request.getParameter("carbs")) );
		menu.setProteins( Integer.parseInt( request.getParameter("proteins")) );
		menu.setFat( Integer.parseInt( request.getParameter("fat")) );
		menu.setSodium( Integer.parseInt( request.getParameter("sodium")) );
				
		MenuDao menuDao = new MenuDao();
		int cnt = -1;
		cnt = menuDao.InsertMenu(menu);
			
		if(cnt != -1) {
			String gotopage = "/menu/cfEditMenu.jsp"; 
		
			RequestDispatcher dispatcher 
				= request.getRequestDispatcher( gotopage ) ;
			dispatcher.forward(request, response); 
		}
	}
}
