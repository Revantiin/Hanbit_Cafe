package mypkg.cafe.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.cafe.controller.ActionFactory;
import mypkg.cafe.controller.action.Action;
import utility.MyFileUpload;

import com.oreilly.servlet.MultipartRequest;
@WebServlet("/CafeCtrl")
public class CafeController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String command = request.getParameter("command") ;
		ServletContext context = getServletContext() ;
		
		if(command == null ){ //���Ͼ��ε�	
			String uploadedPath = context.getRealPath("upload") ; //���� ���ε�� ������ ���
			
			//�׷���, ���� ���ε带 ���� MultipartRequest ��ü�� �����ִ� �޼ҵ带 ȣ���Ѵ�.
			MultipartRequest multi = MyFileUpload.getMultiPartRequest(request, uploadedPath) ;
			if( multi != null ){ //MultipartRequest ��ü�� ��������
				command = multi.getParameter("command") ;
				request.setAttribute("multi", multi ); //request�� ���ε�
				request.setAttribute("uploadedPath", uploadedPath ); //request�� ���ε�
			}			
		}
		System.out.println( this.getClass() + " Ŀ�ǵ� �̸� :  " + command ); 		
		ActionFactory af = ActionFactory.getInstance() ;
		Action action = af.getAction(command) ;
		//Action action = new FashionListAction();
		
		if( action != null ){
			action.doAction(request, response, context); 
		}
	}
}
