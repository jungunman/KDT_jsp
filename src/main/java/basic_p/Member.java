package basic_p;

public class Member {
	
	public final String pid, pname, pw;

	public Member(String pid, String pw, String pname) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pw = pw;
	}
	
	public boolean chk(String pid, String pw) {
		return this.pid.equals(pid) && this.pw.equals(pw);
	}
	

	@Override
	public String toString() {
	
		return pid+" , "+pname+" , "+pw;
	}
	
}
