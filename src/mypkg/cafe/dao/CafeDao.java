package mypkg.cafe.dao;

//데이터 베이스 관련  java.sql 패키지를 임포트한다.
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//게시물 목록을 가져 오기 위한 자바의 컬렉션에 대한 import 구문이다.
import java.util.ArrayList;
import java.util.List;


//게시물 Bean 클래스에 대한 import 구문이다.
import mypkg.cafe.bean.MemberBean;
//import utility.Paging;
//커넥션 풀을 위한 인터페이스 및 클래스에 대한 import 구문이다.

public class CafeDao extends SuperDao{//DAO 클래스의 생성자 부분이다.
	public CafeDao() {
	}	
	
	//Bean 객체를 이용하여 해당 게시물을 업데이트한다.
	public int UpdateMember(MemberBean member) {
		PreparedStatement pstmt = null ;	
		String sql = "update members set password = ?, name=?, address=?, " ;
		sql += " phonenum=?, cellphone=? " ;
		sql += " where id = ? " ;
		
		int cnt = -1 ; 
		
		try {
			conn = getConnection() ;
			
			//dml 작업을 수행할 것이므로, 커넥션 자동 설정 기능을 off 시킨다.
			conn.setAutoCommit(false) ;
			
			//sql 변수를 이용하여 PreparedStatement 객체를 구한다.
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getAddress());
			pstmt.setInt(4, member.getPhonenum());
			pstmt.setInt(5, member.getCellphone());	
			pstmt.setString(6, member.getId());
			
			//executeUpdate() 메소드를 이용하여 해당 문장을 수행한다.
			cnt = pstmt.executeUpdate() ;
			
			//영구 저장을 하기 위한 commit 명령어를 수행한다.
			conn.commit();
			System.out.println("업뎃완료");
		} catch (SQLException e) {
			try {
				//예외 발생시 해당 작업에 대한 rollback 명령어를 수행한다.
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		} finally{
			//참조된 객체 변수에 대하여 close() 메소드를 이용하여 해당 객체들을 닫는다.
			try {				
				if(pstmt != null){ pstmt.close() ; }
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}		
		return cnt  ;
	}	
	
	//Bean 객체를 이용하여 해당 게시물을 추가한다.
	public int InsertMember(MemberBean member ){
		PreparedStatement pstmt = null ;
		
		////오라클 데이터베이스에 인서트하기 위한 sql구문이다.
		String sql = "insert into members(id, password, name, address, phonenum, cellphone, admin) " ;
		sql += " values(?, ?, ?, ?, ?, ?, default) " ;
		
		int cnt = -1 ;
		try {
			conn = getConnection() ;
			
			//dml 작업을 수행할 것이므로, 커넥션 자동 설정 기능을 off 시킨다.
			conn.setAutoCommit(false) ;
			
			//sql 변수를 이용하여 PreparedStatement 객체를 구한다.
			pstmt = conn.prepareStatement(sql); 
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getAddress());
			pstmt.setInt(5, member.getPhonenum());
			pstmt.setInt(6, member.getCellphone());
			
			//executeUpdate() 메소드를 이용하여 해당 문장을 수행한다.
			cnt = pstmt.executeUpdate() ;
			
			//영구 저장을 하기 위한 commit 명령어를 수행한다.
			conn.commit();			
			System.out.println("여기는 insert안에 print");
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		} finally{
			//참조된 객체 변수에 대하여 close() 메소드를 이용하여 해당 객체들을 닫는다.
			try {				
				if(pstmt != null){ pstmt.close() ; }
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}		
		return cnt  ;
	}	
	public MemberBean GetMemberById(String id){
		PreparedStatement pstmt = null ;
		String sql = "select * from members where id = ?";
		ResultSet rs = null ;
		MemberBean member = null;
		
		try {		
			conn = getConnection() ;
			
			//sql 변수를 이용하여 PreparedStatement 객체를 구한다.
			pstmt = conn.prepareStatement( sql ) ;
			
			pstmt.setString(1, id) ;
			
			//executeQuery() 메소드를 이용하여 ResultSet 객체를 구한다.
			rs = pstmt.executeQuery() ; 
			System.out.println("sql실행 했음?");
			
			if( rs.next() ){
				member = new MemberBean() ;
				System.out.println("member 만들었니?");
				
				member.setId( rs.getString("id") );
				System.out.println(member.getId());
				member.setPassword( rs.getString("password") );
				member.setName( rs.getString("name") );
				member.setAddress( rs.getString("address") );
				member.setPhonenum( rs.getInt("phonenum") );
				member.setCellphone( rs.getInt("cellphone") );
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//참조된 객체 변수에 대하여 close() 메소드를 이용하여 해당 객체들을 닫는다.
			try {
				if( rs != null ){rs.close() ;}
				if( pstmt != null ){pstmt.close() ;}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
		return member ;
	}	
	public int DeleteMember(String id) {
		PreparedStatement pstmt = null ;		
		String sql = "delete members where id=?";
		int cnt = -1 ; 
		
		try {
			conn = getConnection() ;
			
			//dml 작업을 수행할 것이므로, 커넥션 자동 설정 기능을 off 시킨다.
			conn.setAutoCommit(false) ;
			
			//sql 변수를 이용하여 PreparedStatement 객체를 구한다.
			pstmt = conn.prepareStatement(sql) ;		
			
			pstmt.setString(1, id);
			
			//executeUpdate() 메소드를 이용하여 해당 문장을 수행한다.
			cnt = pstmt.executeUpdate() ;
			
			//영구 저장을 하기 위한 commit 명령어를 수행한다.
			conn.commit();
			
		} catch (SQLException e) {
			try {
				//예외 발생시 해당 작업에 대한 rollback 명령어를 수행한다.
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		} finally{
			//참조된 객체 변수에 대하여 close() 메소드를 이용하여 해당 객체들을 닫는다.
			try {				
				if(pstmt != null){ pstmt.close() ; }
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}
		return cnt  ;
	}	
}