package homework_db_p;

public class MemberDTO {
	private String nickName;
	private String id;
	private String pwd;
	private String email;
	private String phoneNumber;
	private String frontNum;
	private String backNum;
	
	
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getFrontNum() {
		return frontNum;
	}
	public void setFrontNum(String frontNum) {
		this.frontNum = frontNum;
	}
	public String getBackNum() {
		return backNum;
	}
	public void setBackNum(String backNum) {
		this.backNum = backNum;
	}
}
