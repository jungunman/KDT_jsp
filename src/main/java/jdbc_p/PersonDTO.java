package jdbc_p;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PersonDTO {

	String pid, addr, email;
	Integer age;
	Double height;
	Date regDate,wakeup;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Double getHeight() {
		return height;
	}
	public void setHeight(Double height) {
		this.height = height;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getWakeup() {
		return wakeup;
	}
	public void setWakeup(Date wakeup) {
		this.wakeup = wakeup;
	}
	
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
	
	public void setRegDateStr(String regDate) {
		try {
			this.regDate = sdf1.parse(regDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public String getRegDateStr() {
		return sdf1.format(regDate);
	}
	
	@Override
	public String toString() {
		return "PersonDTO [pid=" + pid + ", age=" + age + ", height=" + height + ", regDate=" + regDate + ", wakeup="
				+ wakeup + ", addr=" + addr + ", email=" + email + "]";
	}
	
	
	
}
