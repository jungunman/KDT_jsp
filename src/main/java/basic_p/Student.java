package basic_p;

import java.util.Arrays;

public class Student {
	private String name,grade;
	private int [] jums;
	private int tot, avg;
	
	
	public Student(String name, int ...jums) {
		this.name = name;
		this.jums = jums;
		
		for (int jum : jums) {
			this.tot += jum;
		}
		this.avg = tot/jums.length;
	}


	public String getName() {
		return name;
	}


	public String getGrade() {
		return grade;
	}


	public int[] getJums() {
		return jums;
	}


	public int getTot() {
		return tot;
	}


	public int getAvg() {
		return avg;
	}


	@Override
	public String toString() {
		return "이름=" + name + "\t 국/영/수=" + Arrays.toString(jums) + "\t 총점=" + tot + "\t 평균=" + avg;
	}
	
	
	
	
}
