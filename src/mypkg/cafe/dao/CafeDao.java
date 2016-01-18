package mypkg.cafe.dao;

//������ ���̽� ����  java.sql ��Ű���� ����Ʈ�Ѵ�.
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//�Խù� ����� ���� ���� ���� �ڹ��� �÷��ǿ� ���� import �����̴�.
import java.util.ArrayList;
import java.util.List;


//�Խù� Bean Ŭ������ ���� import �����̴�.
import mypkg.cafe.bean.MemberBean;
//import utility.Paging;
//Ŀ�ؼ� Ǯ�� ���� �������̽� �� Ŭ������ ���� import �����̴�.

public class CafeDao extends SuperDao{//DAO Ŭ������ ������ �κ��̴�.
	public CafeDao() {
	}	
	
	//Bean ��ü�� �̿��Ͽ� �ش� �Խù��� ������Ʈ�Ѵ�.
	public int UpdateMember(MemberBean member) {
		PreparedStatement pstmt = null ;	
		String sql = "update members set password = ?, name=?, address=?, " ;
		sql += " phonenum=?, cellphone=? " ;
		sql += " where id = ? " ;
		
		int cnt = -1 ; 
		
		try {
			conn = getConnection() ;
			
			//dml �۾��� ������ ���̹Ƿ�, Ŀ�ؼ� �ڵ� ���� ����� off ��Ų��.
			conn.setAutoCommit(false) ;
			
			//sql ������ �̿��Ͽ� PreparedStatement ��ü�� ���Ѵ�.
			pstmt = conn.prepareStatement(sql) ;
			
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getAddress());
			pstmt.setInt(4, member.getPhonenum());
			pstmt.setInt(5, member.getCellphone());	
			pstmt.setString(6, member.getId());
			
			//executeUpdate() �޼ҵ带 �̿��Ͽ� �ش� ������ �����Ѵ�.
			cnt = pstmt.executeUpdate() ;
			
			//���� ������ �ϱ� ���� commit ��ɾ �����Ѵ�.
			conn.commit();
			System.out.println("�����Ϸ�");
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
	public int InsertMember(MemberBean member ){
		PreparedStatement pstmt = null ;
		
		////����Ŭ �����ͺ��̽��� �μ�Ʈ�ϱ� ���� sql�����̴�.
		String sql = "insert into members(id, password, name, address, phonenum, cellphone, admin) " ;
		sql += " values(?, ?, ?, ?, ?, ?, default) " ;
		
		int cnt = -1 ;
		try {
			conn = getConnection() ;
			
			//dml �۾��� ������ ���̹Ƿ�, Ŀ�ؼ� �ڵ� ���� ����� off ��Ų��.
			conn.setAutoCommit(false) ;
			
			//sql ������ �̿��Ͽ� PreparedStatement ��ü�� ���Ѵ�.
			pstmt = conn.prepareStatement(sql); 
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getAddress());
			pstmt.setInt(5, member.getPhonenum());
			pstmt.setInt(6, member.getCellphone());
			
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
	public MemberBean GetMemberById(String id){
		PreparedStatement pstmt = null ;
		String sql = "select * from members where id = ?";
		ResultSet rs = null ;
		MemberBean member = null;
		
		try {		
			conn = getConnection() ;
			
			//sql ������ �̿��Ͽ� PreparedStatement ��ü�� ���Ѵ�.
			pstmt = conn.prepareStatement( sql ) ;
			
			pstmt.setString(1, id) ;
			
			//executeQuery() �޼ҵ带 �̿��Ͽ� ResultSet ��ü�� ���Ѵ�.
			rs = pstmt.executeQuery() ; 
			System.out.println("sql���� ����?");
			
			if( rs.next() ){
				member = new MemberBean() ;
				System.out.println("member �������?");
				
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
			//������ ��ü ������ ���Ͽ� close() �޼ҵ带 �̿��Ͽ� �ش� ��ü���� �ݴ´�.
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
			
			//dml �۾��� ������ ���̹Ƿ�, Ŀ�ؼ� �ڵ� ���� ����� off ��Ų��.
			conn.setAutoCommit(false) ;
			
			//sql ������ �̿��Ͽ� PreparedStatement ��ü�� ���Ѵ�.
			pstmt = conn.prepareStatement(sql) ;		
			
			pstmt.setString(1, id);
			
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