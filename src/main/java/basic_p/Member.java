package basic_p;

public class Member {
	
	public String pid, pname, pw;
	
	public Member() {
		
	}
	
	public Member(String pid, String pw, String pname) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pw = pw;
	}
	
	
	
	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public boolean chk(String pid, String pw) {
		return this.pid.equals(pid) && this.pw.equals(pw);
	}
	

	@Override
	public String toString() {
	
		return pid+" , "+pname+" , "+pw;
	}
	
}
