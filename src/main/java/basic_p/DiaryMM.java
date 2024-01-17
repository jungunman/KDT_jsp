package basic_p;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

public class DiaryMM {

	int year, month;
	
	public ArrayList<DiaryDD> days;
	
	HashMap<String, String>spec;

	public DiaryMM(int year, int month, HashMap<String, String>spec) {
		super();
		this.year = year;
		this.month = month;
		this.spec = spec;
		
		days = new ArrayList<DiaryDD>();
		calc();
	}
	
	void calc() {
		Calendar dday = Calendar.getInstance();
		Calendar today = Calendar.getInstance();
		dday.set(Calendar.YEAR, year);
		dday.set(Calendar.MONTH, month);
		dday.set(Calendar.DATE, 1);
		int first = dday.get(Calendar.DAY_OF_WEEK);
		int last = dday.getActualMaximum(Calendar.DATE);
		
		//첫날 앞에 빈칸 넣기
		for(int i = 1; i < first; i++) {
			days.add(new DiaryDD(0, -1));
		}
		
		//날짜 넣기
		for(int i = 1; i <= last; i++) {
			dday.set(Calendar.DATE, i);
			DiaryDD ddd = new DiaryDD(i, dday.get(Calendar.DAY_OF_WEEK));
			
			String spTTT = month+1+"_"+i;
			if(spec.containsKey(spTTT)) {
				ddd.spec = spec.get(spTTT);
			}
			
			if(today.get(Calendar.YEAR)==year && 
					today.get(Calendar.MONTH)==month && 
					today.get(Calendar.DATE)==i) {
				ddd.today = true;
			}
			
			days.add(ddd);
			
		}		
		
	}
	
	public String getTitle() {
		return year+"년 "+(month+1)+"월";
	}
	
	
}
