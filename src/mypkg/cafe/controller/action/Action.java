package mypkg.cafe.controller.action;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Action(�׼�) �������̽� : ��� �׼ǵ��� �θ� �������̽�
//��û�� ������ �Ǹ� Ư���� �׼���(����) �������ֱ� ���� �������̽� 
public interface Action {
	//��� ����Ͻ� ������ �����ϱ� ���� �߻� �޼ҵ带 �����Ѵ�.
	public void doAction(HttpServletRequest request, HttpServletResponse response, ServletContext context) 
			throws ServletException, IOException;
	
	
}