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
			
			Class.forName("org.mariadb.jdbc.Driver");
		
			this.con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/task_db", "task", "1111");
			this.stmt = con.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	public int joinMember(MemberDTO dto) {
		int result = 0;
		int [] gender = {-1,0,1,0,1,0,1,0,1};
		
		this.sql = "insert into member values "
				+ "('"+dto.getNickName()+"','"+dto.getId()+"','"+dto.getPwd()+"','"+dto.getEmail()+"',"
				+ "'"+dto.getPhoneNumber()+"',sysdate(),'"+dto.getFrontNum()+"','"+dto.getBackNum()+"',"+gender[Integer.parseInt(dto.getBackNum().substring(0,1))]+")";
		
		System.out.println("sql [ "+sql+ "]");
		try {
			
			result = stmt.executeUpdate(sql);
			
		} catch (SQLException e){e.printStackTrace();}
		finally {close();}
		
		return result;
	}
	
	
	public MemberDTO login(MemberDTO dto) {
		MemberDTO result = null;
		
		sql = "select id,pwd,nick_name from member where id='"+dto.getId()+"' and pwd='"+dto.getPwd()+"'";
		try {
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				result = new MemberDTO();
				result.setId(rs.getString("id"));
				result.setPwd(rs.getString("pwd"));
				result.setNickName(rs.getString("nick_name"));
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return result;
	}
	
	
	void close(){
		if(con!=null) {try {con.close();} catch (SQLException e) {e.printStackTrace();}}
		if(stmt!=null) {try {stmt.close();} catch (SQLException e) {e.printStackTrace();}}
		if(rs!=null) {try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
	}
	
}
