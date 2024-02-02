package jdbc_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class PersonDAO {

	Connection con;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	public PersonDAO() {
		
		try {
			
			Class.forName("org.mariadb.jdbc.Driver");
			//1. db 연결
			con = DriverManager.getConnection(
					"jdbc:mariadb://localhost:3306/jsp_db", 
					"green", 
					"123456");
			
			//2. sql구문 실행 객체
			stmt = con.createStatement();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	void close() {
		//5. sql 실행 객체 해제
		if(rs!=null) { 
			try {rs.close();} catch (SQLException e) {} 
		}
		if(stmt!=null) { 
			try {stmt.close();} catch (SQLException e) {} 
		}
		
		
		//6. db 연결 해제
		if(con!=null) { 
			try {con.close();} catch (SQLException e) {} 
		}
	
	}
	
	
	public ArrayList<PersonDTO> list(){
		ArrayList<PersonDTO> res = new ArrayList<PersonDTO>();
		
		try {
			sql = "select * from person";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				PersonDTO dto = new PersonDTO();
				dto.setPid(rs.getString("pid"));
				dto.setAddr(rs.getString("addr"));
				dto.setEmail(rs.getString("email"));
				dto.setAge(rs.getInt("age"));
				dto.setHeight(rs.getDouble("height"));
				dto.setRegDate(rs.getDate("reg_date"));
				dto.setWakeup(rs.getTimestamp("wake_up"));
				
				res.add(dto);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			close();
		}
		
		return res;
	}
	
	
	
	public PersonDTO detail(String pid){
		PersonDTO dto = null;
		
		try {
			sql = "select * from person where pid = '"+pid+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				dto = new PersonDTO();
				dto.setPid(rs.getString("pid"));
				dto.setAddr(rs.getString("addr"));
				dto.setEmail(rs.getString("email"));
				dto.setAge(rs.getInt("age"));
				dto.setHeight(rs.getDouble("height"));
				dto.setRegDate(rs.getDate("reg_date"));
				dto.setWakeup(rs.getTimestamp("wakeup"));
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			close();
		}
		
		return dto;
	}
	
	public int write(PersonDTO dto){
		int res = 0;
		
		try {
			sql = "insert into person "
			+ " (pid, addr , email, age,  height, reg_date,  wake_up) "
			+ " values "
			+ " ('"+dto.getPid()+"','"+dto.getAddr()+"','"+dto.getEmail()+"', "+dto.getAge()+", "+dto.getHeight()+", '"+dto.getRegDateStr()+"', sysdate())";
			
			res = stmt.executeUpdate(sql);

		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			close();
		}
		
		return res;
	}
	
	public int delete(String pid){
		int res = 0;
		
		try {
			sql = "delete from person where pid = '"+pid+"'";
			
			System.out.println(sql);
			
			res = stmt.executeUpdate(sql);

		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			close();
		}
		
		return res;
	}
	

	public int modify(PersonDTO dto){
		int res = 0;
		
		try {
			sql = "update person set "
					+ "addr = '"+dto.getAddr()+"', "
					+ "age = "+dto.getAge()+", "
					+ "height = "+dto.getHeight()+", "
					+ "reg_date = '"+dto.getRegDateStr()+"', "
					+ "email = '"+dto.getEmail()+"' "
					+ "where pid = '"+dto.getPid()+"'";
			
			System.out.println(sql);
			
			res = stmt.executeUpdate(sql);

		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			close();
		}
		
		return res;
	}


}
