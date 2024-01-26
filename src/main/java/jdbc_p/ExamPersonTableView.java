package jdbc_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ExamPersonTableView {

	public static void main(String[] args) {
		
		System.out.println("Person Table 실행");
		
		try(Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/jsp_db","green","123456");
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from person");){
			
			
			
			
			while(rs.next()) {
				String res = rs.getString("pid")+"\t"+
						rs.getInt("age")+"\t"+
						rs.getDouble("height")+"\t"+
						rs.getString("addr")+"\t"+
						rs.getDate("reg_date")+"\t"+
						rs.getDate("wake_up")+"\t"+
						rs.getString("email")+"\t";
				
				System.out.println(res);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

	}

}
