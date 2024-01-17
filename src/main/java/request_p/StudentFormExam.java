package request_p;

public class StudentFormExam implements Comparable<StudentFormExam>{

	public String name;
	public int kor;
	public int eng;
	public int mat;
	public int spec;
	public int tot;
	public int avg; 
	public int rank;
	
	public StudentFormExam(String name, String kor, String eng, String mat, String spec) {
		this.name = name;
		this.kor = Integer.parseInt(kor);
		this.eng = Integer.parseInt(eng);
		this.mat = Integer.parseInt(mat);
		this.spec = Integer.parseInt(spec);
		
		this.tot = this.kor+this.eng+this.mat+this.spec;
		this.avg = this.tot/4;
	}

	@Override
	public int compareTo(StudentFormExam target) {
		int res = target.avg - this.avg;
		
		if(res == 0) {
			res = this.name.compareTo(target.name);
		}
		return res;
	}
	
}
