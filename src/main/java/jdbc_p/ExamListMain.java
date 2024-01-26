package jdbc_p;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ExamListMain {

	
	public static void main(String[] args) {
		
		System.out.println("Exam 실행");
		
		
		
		//
		try(Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/jsp_db","green","123456");
				java.sql.Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from exam");){
			
			
			
			
			while(rs.next()) {
				int tot =	 rs.getInt("one_semester_midterm_examination")+
						  	 rs.getInt("one_semester_final_examination")+
						  	 rs.getInt("two_semester_midterm_examination")+
						  	 rs.getInt("two_semester_final_examination");
				String res = rs.getString("name")+tot+"\t"+(tot/2);
				System.out.println(res);
			}
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
