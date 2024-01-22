package basic_p;

public class Menu {

	public String cate, cateTitle, main, title;

	public Menu(String cate, String main, String title) {
		super();
		this.cate = cate;
		this.main = main;
		this.title = title;
		
		cateTitle = cate.substring(cate.indexOf("_")+1);
	}
	
	
}
