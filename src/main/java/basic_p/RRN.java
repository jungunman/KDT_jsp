package basic_p;

import java.text.SimpleDateFormat;
import java.util.Date;

public class RRN {

	private String front, back, gender;
	private int krAge;
	
	
	public RRN(String rrn) {
		this.front = rrn.split("-")[0];
		this.back = rrn.split("-")[1];
		
		int backFirst = Integer.parseInt(back.substring(0,1));
		this.front = ((backFirst-1)%4/2+19)+front;
		
		String [] pickGender = {"","남","여","남","여","남","여","남","여"};
		this.gender = pickGender[backFirst];
		this.krAge = Integer.parseInt( new SimpleDateFormat("yyyy").format(new Date()) ) - Integer.parseInt(front.substring(0, 4));
	}


	@Override
	public String toString() {
		return "생년월일 = " + front + ", 성별 = " + gender + ", 한국나이 = " + krAge;
	}
	
	
	
	
	
}
