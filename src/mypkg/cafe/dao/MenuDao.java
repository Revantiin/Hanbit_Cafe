package mypkg.cafe.dao;

//데이터 베이스 관련  java.sql 패키지를 임포트한다.
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//게시물 목록을 가져 오기 위한 자바의 컬렉션에 대한 import 구문이다.
import java.util.ArrayList;
import java.util.List;

//게시물 Bean 클래스에 대한 import 구문이다.
import mypkg.cafe.bean.MenuBean;
//import utility.Paging;
//커넥션 풀을 위한 인터페이스 및 클래스에 대한 import 구문이다.


public class MenuDao extends SuperDao{//DAO 클래스의 생성자 부분이다.
	public MenuDao() {
	}	
	
	//Bean 객체를 이용하여 해당 게시물을 업데이트한다.
	public int UpdateMenu(MenuBean menu) {
		PreparedStatement pstmt = null ;	
		String sql = "update menus set name=?, price=?, " 
		 + " category=?, image=?, desc=?, weight=?, " 
		 + " size=?, calories=?, carbs=?, proteins=?, "
		 + " fat=?, sodium=?, ";
		sql += " where no = ? " ;
		
		int cnt = -1 ; 
		
		try {
			conn = getConnection() ;
			
			//dml 작업을 수행할 것이므로, 커넥션 자동 설정 기능을 off 시킨다.
			conn.setAutoCommit(false) ;
			
			//sql 변수를 이용하여 PreparedStatement 객체를 구한다.
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setString(1, menu.getName());
			pstmt.setInt(2, menu.getPrice());
			pstmt.setString(3, menu.getCategory());
			pstmt.setString(4, menu.getImage());
			pstmt.setString(5, menu.getDesc());	
			pstmt.setInt(6, menu.getWeight());
			pstmt.setString(7, menu.getSize());
			pstmt.setInt(8, menu.getCalories());
			pstmt.setInt(9, menu.getCarbs());	
			pstmt.setInt(10, menu.getProteins());
			pstmt.setInt(11, menu.getFat());
			pstmt.setInt(12, menu.getSodium());
			pstmt.setInt(13, menu.getNo());
			
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
	
	//Bean 객체를 이용하여 해당 게시물을 추가한다.
	public int InsertMenu(MenuBean menu ){
		PreparedStatement pstmt = null ;
		
		////오라클 데이터베이스에 인서트하기 위한 sql구문이다.
		String sql = "insert into fashions(no, name, price, category, image, "
					+ "desc, weight, size, calories, carbs, proteins, fat, sodium) " ;
		sql += " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) " ;
		
		int cnt = -1 ;
		try {
			conn = getConnection() ;
			
			//dml 작업을 수행할 것이므로, 커넥션 자동 설정 기능을 off 시킨다.
			conn.setAutoCommit(false) ;
			
			//sql 변수를 이용하여 PreparedStatement 객체를 구한다.
			pstmt = conn.prepareStatement(sql); 
			
			pstmt.setInt(1, menu.getNo());
			pstmt.setString(2, menu.getName());
			pstmt.setInt(3, menu.getPrice());
			pstmt.setString(4, menu.getCategory());
			pstmt.setString(5, menu.getImage());
			pstmt.setString(6, menu.getDesc());
			pstmt.setInt(7, menu.getWeight());
			pstmt.setString(8, menu.getSize());
			pstmt.setInt(9, menu.getCalories());
			pstmt.setInt(10, menu.getCarbs());
			pstmt.setInt(11, menu.getProteins());
			pstmt.setInt(12, menu.getFat());
			pstmt.setInt(13, menu.getSodium());
			
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
	
	//시작 행과 끝 행을 이용하여 게시물 목록을 구한다.
	public List<MenuBean> GetMenuList( int beginRow, int endRow ){ 		
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;		
		//오라클 데이터베이스의 Top-N절을 이용하여 데이터를 조회하기 위한 sql구문이다.	
		String sql = "select id, name, stock, price, category, image, groupno, orderno, regdate, readcount, depth, comments, password " ;
		sql += " from ( " ;
		sql += " select rownum as rank , id, name, stock, price, category, image, groupno, orderno, regdate, readcount, depth, comments, password " ;
		sql += " from (select id, name, stock, price, category, image, groupno, orderno, regdate, readcount, depth, comments, password " ;
		sql += " from fashions order by groupno desc, orderno asc, depth asc ) ) " ;
		sql += " where rank between ? and ? " ;
		
		//게시물 목록을 저장하기 위한 자바의 컬렉션을 정의하고 있다.
		List<MenuBean> lists = new ArrayList<MenuBean>();
		try {
			conn = getConnection() ;
			
			//sql 변수를 이용하여 PreparedStatement 객체를 구한다.
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setInt(1, beginRow);
			pstmt.setInt(2, endRow);
			
			//executeQuery() 메소드를 이용하여 ResultSet 객체를 구한다.
			rs = pstmt.executeQuery() ;
			
			//여러 건이 조회가 되므로 while 구문을 사용하여 Bean 객체에 값들을 저장한다.
			while( rs.next() ){
				MenuBean menu = new MenuBean();					
				
				menu.setNo( rs.getInt("no") );
				menu.setName( rs.getString("name") );
				menu.setPrice( rs.getInt("price") );
				menu.setCategory( rs.getString("category") );
				menu.setImage( rs.getString("image") );
				menu.setDesc( rs.getString("desc") );
				menu.setWeight( rs.getInt("weight") );
				menu.setSize( rs.getString("size") );
				menu.setCalories( rs.getInt("calories") );
				menu.setCarbs( rs.getInt("carbs") );
				menu.setProteins( rs.getInt("proteins") );
				menu.setFat( rs.getInt("fat") );
				menu.setSodium( rs.getInt("sodium") );
				lists.add(menu) ; 
			}			
		} catch (SQLException e) {			
			e.printStackTrace();			
		} finally{
			//참조된 객체 변수에 대하여 close() 메소드를 이용하여 해당 객체들을 닫는다.
			try {
				if(rs != null){rs.close() ; }
				if(pstmt != null){pstmt.close() ; }
			} catch (Exception e2) {
				e2.printStackTrace() ;
			}
		}		
		//최종 결과물인 컬렉션을 요청한 페이지에 리턴한다.
		return lists ;
	}	
	
	public MenuBean GetMenuById(int id){
		PreparedStatement pstmt = null ;
		String sql = "select * from fashions where no = ?";
		ResultSet rs = null ;
		MenuBean menu = null;
		
		try {		
			conn = getConnection() ;
			
			//sql 변수를 이용하여 PreparedStatement 객체를 구한다.
			pstmt = conn.prepareStatement( sql ) ;
			
			pstmt.setInt(1, id) ;
			
			//executeQuery() 메소드를 이용하여 ResultSet 객체를 구한다.
			rs = pstmt.executeQuery() ; 
			
			if( rs.next() ){
				menu = new MenuBean() ;
				
				menu.setNo( rs.getInt("no") );
				menu.setName( rs.getString("name") );
				menu.setPrice( rs.getInt("price") );
				menu.setCategory( rs.getString("category") );
				menu.setImage( rs.getString("image") );
				menu.setDesc( rs.getString("desc") );
				menu.setWeight( rs.getInt("weight") );
				menu.setSize( rs.getString("size") );
				menu.setCalories( rs.getInt("calories") );
				menu.setCarbs( rs.getInt("carbs") );
				menu.setProteins( rs.getInt("proteins") );
				menu.setFat( rs.getInt("fat") );
				menu.setSodium( rs.getInt("sodium") );
				
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
		return menu ;
	}	
	
	public int DeleteMenu(int id) {
		PreparedStatement pstmt = null ;		
		String sql = "delete fashions where id=?";
		int cnt = -1 ; 
		
		try {
			conn = getConnection() ;
			
			//dml 작업을 수행할 것이므로, 커넥션 자동 설정 기능을 off 시킨다.
			conn.setAutoCommit(false) ;
			
			//sql 변수를 이용하여 PreparedStatement 객체를 구한다.
			pstmt = conn.prepareStatement(sql) ;		
			
			pstmt.setInt(1, id);
			
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