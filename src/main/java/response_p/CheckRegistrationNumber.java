package response_p;

import java.util.Date;

public class CheckRegistrationNumber {
	public String name;
	public int thisYear ,year, month, day , firstNo;

	public boolean isAdult;
	public boolean isLocal;
	
	public Date now;
	public Date thisBirthDay;
	
	public CheckRegistrationNumber(String name, String... regiNum){
		this.name = name;
		this.year = Integer.parseInt(regiNum[0].substring(0, 2));
		this.month = Integer.parseInt(regiNum[0].substring(2, 4));
		this.day = Integer.parseInt(regiNum[0].substring(4, 6));
		this.firstNo = Integer.parseInt(regiNum[1].substring(0, 1));
		
		int [] centuries = {0,1900,1900,2000,2000,1900,1900,2000,2000};
		this.year = year + centuries[firstNo];
		
		//데이트 설정
		this.now = new Date();
		this.thisYear = now.getYear()+1900; 
		
		//내,외국인 판별 및 성인, 미성년 판별!
		makeADistinction();
	}
	private void makeADistinction() {
		if(firstNo > 4) {
			isLocal = false;
		}else {
			isLocal = true;
		}

		//성인 판별
		if(thisYear-year > 16) {
			isAdult = true;
		}else if(thisYear-year <=16) {
			if( now.getMonth()+1 == month && now.getDate() >= day) {
				isAdult = true;
			}else {
				isAdult = false;
			}
		}
	}
	
	
}
