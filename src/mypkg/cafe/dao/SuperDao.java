package mypkg.cafe.dao;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class SuperDao {
	Connection conn = null;
	DataSource ds = null ;

	//DAO의 모든 메소드 영역에서 Connection 객체를 직접 구하기 위한 공용 메소드를 정의한다.
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
			conn = getConnection(); // ds을 이용한 Connection 객체 생성
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}