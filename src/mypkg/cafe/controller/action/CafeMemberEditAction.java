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

public class CafeMemberEditAction implements Action {
	@Override
	public void doAction(HttpServletRequest request,
			HttpServletResponse response, ServletContext context)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		MemberBean member = new MemberBean();
		member.setId(request.getParameter("id"));
		member.setPassword(request.getParameter("password"));
		member.setName(request.getParameter("name"));
		member.setAddress(request.getParameter("address"));
		member.setPhonenum(Integer.parseInt(request.getParameter("phonenum")));
		System.out.println(member.getPhonenum());
		member.setCellphone(Integer.parseInt(request.getParameter("cellphone")));
		System.out.println(member.getCellphone());
		
		CafeDao dao = new CafeDao();
		int cnt = -1;
		cnt = dao.UpdateMember(member);
		
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.setAttribute("member", member);
		request.setAttribute("member", member);
		
		if(cnt != -1){
			String gotopage = "/index.jsp"; 
			RequestDispatcher dispatcher 
			= request.getRequestDispatcher( gotopage ) ;
			
			dispatcher.forward(request, response); 
		}
	}
}
