package basic_p;

public class DiaryDD {

	public int date, day;
	public String  spec="", now;
	public boolean today;
	public DiaryDD(int date, int day) {
		super();
		this.date = date;
		this.day = day;
		
	}
	
	public String dateStr() {
		if(date==0) {
			return "";
		}
		
		return date+"";
	}
	
	
}
