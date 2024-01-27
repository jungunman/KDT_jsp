package homework_db_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MemberDAO {

	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	private String sql;
	
	
	
	public MemberDAO() {	
		try {
			this.con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/task_db", "task", "1111");
			this.stmt = con.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	void close(){
		if(con!=null) {try {con.close();} catch (SQLException e) {e.printStackTrace();}}
		if(stmt!=null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
		if(rs!=null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
	}
	
}
