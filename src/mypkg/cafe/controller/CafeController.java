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
		
		if(command == null ){ //파일업로드	
			String uploadedPath = context.getRealPath("upload") ; //실제 업로드될 웹서버 경로
			
			//그래서, 파일 업로드를 위한 MultipartRequest 객체를 구해주는 메소드를 호출한다.
			MultipartRequest multi = MyFileUpload.getMultiPartRequest(request, uploadedPath) ;
			if( multi != null ){ //MultipartRequest 객체가 구해지면
				command = multi.getParameter("command") ;
				request.setAttribute("multi", multi ); //request에 바인딩
				request.setAttribute("uploadedPath", uploadedPath ); //request에 바인딩
			}			
		}
		System.out.println( this.getClass() + " 커맨드 이름 :  " + command ); 		
		ActionFactory af = ActionFactory.getInstance() ;
		Action action = af.getAction(command) ;
		//Action action = new FashionListAction();
		
		if( action != null ){
			action.doAction(request, response, context); 
		}
	}
}
