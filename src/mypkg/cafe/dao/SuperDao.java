package mypkg.cafe.dao;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class SuperDao {
	Connection conn = null;
	DataSource ds = null ;

	//DAO�� ��� �޼ҵ� �������� Connection ��ü�� ���� ���ϱ� ���� ���� �޼ҵ带 �����Ѵ�.
	Connection getConnection() {
		try {
			conn = ds.getConnection() ;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public SuperDao() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");			
			ds = (DataSource) envContext.lookup("jdbc/OracleDB");
			conn = getConnection(); // ds�� �̿��� Connection ��ü ����
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}