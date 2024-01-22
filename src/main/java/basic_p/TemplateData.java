package basic_p;

import java.io.BufferedReader;
import java.io.File;

import java.io.FileReader;
import java.util.ArrayList;

import java.util.LinkedHashMap;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;

public class TemplateData {
	
	public String mainUrl;
	
	String firstLine(File ff) {
		String res = null;
		try {
			FileReader fr = new FileReader(ff);
			BufferedReader br = new BufferedReader(fr);
			br.readLine();
			br.readLine();
			res = br.readLine();
			
			br.close();
			fr.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	
	public TemplateData(HttpServletRequest request, ServletContext application) {
		// TODO Auto-generated constructor stub
		
		
		File mains = new File(application.getRealPath("include/main"));
		
		LinkedHashMap<String, ArrayList<Menu>>menuMap = new LinkedHashMap();
		
		
		
		for (File dirs: mains.listFiles()) {
			
			ArrayList<Menu> mainList = new ArrayList();
			
			for (File ff: dirs.listFiles()) {
				String mainName = ff.getName().split("[.]")[0];
				
				String title = firstLine(ff);
				mainList.add(new Menu(dirs.getName(),mainName,title));
			}
			
			menuMap.put(dirs.getName(), mainList);
		}
		
		ArrayList<Menu> headers = new ArrayList();
		
		for (ArrayList<Menu> dirs : menuMap.values()) {
			headers.add(dirs.get(0));
			//System.out.println(dirs.get(0).cate+","+dirs.get(0).main+","+dirs.get(0).title);
		}

		request.setAttribute("headers", headers);

		String cate = headers.get(0).cate;
		String main = headers.get(0).main;

		if(request.getParameter("cate")!=null){
			cate = request.getParameter("cate");
		}

		if(request.getParameter("main")!=null){
			main = request.getParameter("main");
		}
		mainUrl = "main/"+cate+"/"+main+".jsp";
		String cateTitle = cate.substring(cate.indexOf("_")+1);
		
		request.setAttribute("cateTitle", cateTitle);
		request.setAttribute("menus", menuMap.get(cate));
	}

}
