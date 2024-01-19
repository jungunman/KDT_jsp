package basic_p;

import java.util.ArrayList;
import java.util.HashMap;

import jakarta.servlet.http.HttpServletRequest;

public class TemplateData {
	
	public String mainUrl;
	
	public TemplateData(HttpServletRequest request) {
		// TODO Auto-generated constructor stub
		
		String cate = "info";

		if(request.getParameter("cate")!=null){
			cate = request.getParameter("cate");
		}
		String cateUrl = "menu/"+cate+".jsp";
		
		String main = "hello";

		if(request.getParameter("main")!=null){
			main = request.getParameter("main");
		}
		mainUrl = cate+"/"+main+".jsp";
		
		HashMap<String, ArrayList<Menu>>menuMap = new HashMap();
		ArrayList<Menu> infos = new ArrayList();
		
		infos.add(new Menu("info","hello","인사말"));
		infos.add(new Menu("info","history","연혁"));
		infos.add(new Menu("info","location","오시는길"));
		
		ArrayList<Menu> galls = new ArrayList();
		
		galls.add(new Menu("gallery","spring","봄"));
		galls.add(new Menu("gallery","summer","여름"));
		galls.add(new Menu("gallery","autumn","가을"));
		galls.add(new Menu("gallery","winter","겨울"));
		
		
		menuMap.put("info", infos);
		
		menuMap.put("gallery", galls);
		
		request.setAttribute("menus", menuMap.get(cate));
	}

}
