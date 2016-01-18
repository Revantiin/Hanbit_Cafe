package mypkg.cafe.dao;

//������ ���̽� ����  java.sql ��Ű���� ����Ʈ�Ѵ�.
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//�Խù� ����� ���� ���� ���� �ڹ��� �÷��ǿ� ���� import �����̴�.
import java.util.ArrayList;
import java.util.List;

//�Խù� Bean Ŭ������ ���� import �����̴�.
import mypkg.cafe.bean.MenuBean;
//import utility.Paging;
//Ŀ�ؼ� Ǯ�� ���� �������̽� �� Ŭ������ ���� import �����̴�.


public class MenuDao extends SuperDao{//DAO Ŭ������ ������ �κ��̴�.
	public MenuDao() {
	}	
	
	//Bean ��ü�� �̿��Ͽ� �ش� �Խù��� ������Ʈ�Ѵ�.
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
			
			//dml �۾��� ������ ���̹Ƿ�, Ŀ�ؼ� �ڵ� ���� ����� off ��Ų��.
			conn.setAutoCommit(false) ;
			
			//sql ������ �̿��Ͽ� PreparedStatement ��ü�� ���Ѵ�.
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
			
			//executeUpdate() �޼ҵ带 �̿��Ͽ� �ش� ������ �����Ѵ�.
			cnt = pstmt.executeUpdate() ;
			
			//���� ������ �ϱ� ���� commit ��ɾ �����Ѵ�.
			conn.commit();
			
		} catch (SQLException e) {
			try {
				//���� �߻��� �ش� �۾��� ���� rollback ��ɾ �����Ѵ�.
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		} finally{
			//������ ��ü ������ ���Ͽ� close() �޼ҵ带 �̿��Ͽ� �ش� ��ü���� �ݴ´�.
			try {				
				if(pstmt != null){ pstmt.close() ; }
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}		
		return cnt  ;
	}	
	
	//Bean ��ü�� �̿��Ͽ� �ش� �Խù��� �߰��Ѵ�.
	public int InsertMenu(MenuBean menu ){
		PreparedStatement pstmt = null ;
		
		////����Ŭ �����ͺ��̽��� �μ�Ʈ�ϱ� ���� sql�����̴�.
		String sql = "insert into fashions(no, name, price, category, image, "
					+ "desc, weight, size, calories, carbs, proteins, fat, sodium) " ;
		sql += " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) " ;
		
		int cnt = -1 ;
		try {
			conn = getConnection() ;
			
			//dml �۾��� ������ ���̹Ƿ�, Ŀ�ؼ� �ڵ� ���� ����� off ��Ų��.
			conn.setAutoCommit(false) ;
			
			//sql ������ �̿��Ͽ� PreparedStatement ��ü�� ���Ѵ�.
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
			
			//executeUpdate() �޼ҵ带 �̿��Ͽ� �ش� ������ �����Ѵ�.
			cnt = pstmt.executeUpdate() ;
			
			//���� ������ �ϱ� ���� commit ��ɾ �����Ѵ�.
			conn.commit();			
			System.out.println("����� insert�ȿ� print");
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		} finally{
			//������ ��ü ������ ���Ͽ� close() �޼ҵ带 �̿��Ͽ� �ش� ��ü���� �ݴ´�.
			try {				
				if(pstmt != null){ pstmt.close() ; }
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}		
		return cnt  ;
	}	
	
	//���� ��� �� ���� �̿��Ͽ� �Խù� ����� ���Ѵ�.
	public List<MenuBean> GetMenuList( int beginRow, int endRow ){ 		
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;		
		//����Ŭ �����ͺ��̽��� Top-N���� �̿��Ͽ� �����͸� ��ȸ�ϱ� ���� sql�����̴�.	
		String sql = "select id, name, stock, price, category, image, groupno, orderno, regdate, readcount, depth, comments, password " ;
		sql += " from ( " ;
		sql += " select rownum as rank , id, name, stock, price, category, image, groupno, orderno, regdate, readcount, depth, comments, password " ;
		sql += " from (select id, name, stock, price, category, image, groupno, orderno, regdate, readcount, depth, comments, password " ;
		sql += " from fashions order by groupno desc, orderno asc, depth asc ) ) " ;
		sql += " where rank between ? and ? " ;
		
		//�Խù� ����� �����ϱ� ���� �ڹ��� �÷����� �����ϰ� �ִ�.
		List<MenuBean> lists = new ArrayList<MenuBean>();
		try {
			conn = getConnection() ;
			
			//sql ������ �̿��Ͽ� PreparedStatement ��ü�� ���Ѵ�.
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setInt(1, beginRow);
			pstmt.setInt(2, endRow);
			
			//executeQuery() �޼ҵ带 �̿��Ͽ� ResultSet ��ü�� ���Ѵ�.
			rs = pstmt.executeQuery() ;
			
			//���� ���� ��ȸ�� �ǹǷ� while ������ ����Ͽ� Bean ��ü�� ������ �����Ѵ�.
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
			//������ ��ü ������ ���Ͽ� close() �޼ҵ带 �̿��Ͽ� �ش� ��ü���� �ݴ´�.
			try {
				if(rs != null){rs.close() ; }
				if(pstmt != null){pstmt.close() ; }
			} catch (Exception e2) {
				e2.printStackTrace() ;
			}
		}		
		//���� ������� �÷����� ��û�� �������� �����Ѵ�.
		return lists ;
	}	
	
	public MenuBean GetMenuById(int id){
		PreparedStatement pstmt = null ;
		String sql = "select * from fashions where no = ?";
		ResultSet rs = null ;
		MenuBean menu = null;
		
		try {		
			conn = getConnection() ;
			
			//sql ������ �̿��Ͽ� PreparedStatement ��ü�� ���Ѵ�.
			pstmt = conn.prepareStatement( sql ) ;
			
			pstmt.setInt(1, id) ;
			
			//executeQuery() �޼ҵ带 �̿��Ͽ� ResultSet ��ü�� ���Ѵ�.
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
			//������ ��ü ������ ���Ͽ� close() �޼ҵ带 �̿��Ͽ� �ش� ��ü���� �ݴ´�.
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
			
			//dml �۾��� ������ ���̹Ƿ�, Ŀ�ؼ� �ڵ� ���� ����� off ��Ų��.
			conn.setAutoCommit(false) ;
			
			//sql ������ �̿��Ͽ� PreparedStatement ��ü�� ���Ѵ�.
			pstmt = conn.prepareStatement(sql) ;		
			
			pstmt.setInt(1, id);
			
			//executeUpdate() �޼ҵ带 �̿��Ͽ� �ش� ������ �����Ѵ�.
			cnt = pstmt.executeUpdate() ;
			
			//���� ������ �ϱ� ���� commit ��ɾ �����Ѵ�.
			conn.commit();
			
		} catch (SQLException e) {
			try {
				//���� �߻��� �ش� �۾��� ���� rollback ��ɾ �����Ѵ�.
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		} finally{
			//������ ��ü ������ ���Ͽ� close() �޼ҵ带 �̿��Ͽ� �ش� ��ü���� �ݴ´�.
			try {				
				if(pstmt != null){ pstmt.close() ; }
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}
		return cnt  ;
	}	
}