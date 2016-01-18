package mypkg.cafe.controller.action;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Action(액션) 인터페이스 : 모든 액션들의 부모 인터페이스
//요청이 들어오게 되면 특정한 액션을(동작) 수행해주기 위한 인터페이스 
public interface Action {
	//모든 비즈니스 로직을 수행하기 위한 추상 메소드를 정의한다.
	public void doAction(HttpServletRequest request, HttpServletResponse response, ServletContext context) 
			throws ServletException, IOException;
	
	
}