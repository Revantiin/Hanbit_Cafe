package mypkg.cafe.controller;

import mypkg.cafe.controller.action.*;
/*import mypkg.fashion.controller.ActionFactory;
import mypkg.fashion.controller.action.FashionWriteFormAction;*/

//���丮 ���� : �׼� ��ü�� ������ Ŭ������ ���� �����ؼ� �۾��ϴ� ������ ����
//�׼� ��ü�� ����� �ִ� ����(Factory) Ŭ����
public class ActionFactory {
	//getAction �޼ҵ� : �ش� Ŀ�ǵ带 �޾Ƽ� �ش� �׸� 
	//�´� Action ��ü�� �����Ѵ�.
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
	
	//�̱��� ���� : �����ϰ� ��ü�� �ϳ��� �����, �̰��� getInstance() �޼ҵ�� �ܺο� �����Ѵ�. 
	private static ActionFactory instance = new ActionFactory();
	private ActionFactory() { }
	public static ActionFactory getInstance() {
		return instance;
	} 
}