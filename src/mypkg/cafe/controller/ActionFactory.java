package mypkg.cafe.controller;

import mypkg.cafe.controller.action.*;
/*import mypkg.fashion.controller.ActionFactory;
import mypkg.fashion.controller.action.FashionWriteFormAction;*/

//팩토리 패턴 : 액션 객체를 별도의 클래스를 따로 설계해서 작업하는 디자인 패턴
//액션 개체를 만들어 주는 공장(Factory) 클래스
public class ActionFactory {
	//getAction 메소드 : 해당 커맨드를 받아서 해당 항목에 
	//맞는 Action 객체를 생성한다.
	public Action getAction(String command){
		//System.out.println("ActionFactory : " + command);
		
		Action action = null ; 
		if (command.equals("cfSignin")) {
			action = new CafeSigninAction();
			
		} else if (command.equals("cfEditMenu")) {
			System.out.println( "I'm in " + this.getClass() );
			action = new CafeEditMenuAction();
		
		} else if (command.equals("cfShowMenu")) {
			action = new CafeShowMenuAction();
		
		} else if (command.equals("cfDetailMenu")) {
			action = new CafeDetailMenuAction();
		
		} else if (command.equals("cfLogin")){
			action = new CafeLoginAction();
			
		} else if (command.equals("cfMemberEditForm")) {
			action = new CafeMemberEditFormAction();
			
		} else if (command.equals("cfMemberEdit")){
			action = new CafeMemberEditAction();
			
		} else if (command.equals("cfMemberDelete")){
			action = new CafeDeleteMemberAction();
			
		} else if (command.equals("cfLogin")){
			action = new CafeLoginAction();
			
		} else if (command.equals("cfLogout")){
			action = new CafeLogoutAction();
		}
		return action ;
	}
	
	//싱글톤 패턴 : 유일하게 객체를 하나만 만들고, 이것을 getInstance() 메소드로 외부에 오픈한다. 
	private static ActionFactory instance = new ActionFactory();
	private ActionFactory() { }
	public static ActionFactory getInstance() {
		return instance;
	} 
}