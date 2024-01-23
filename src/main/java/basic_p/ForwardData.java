package basic_p;

import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ForwardData {

	public ForwardData(HttpServletRequest request, HttpServletResponse response) {
		String service = request.getRequestURI().substring(
				(request.getContextPath()+"/forward/").length());
		//System.out.println(service);
		request.setAttribute("mainUrl","main/"+service);
		
		ArrayList<Menu> headers = new ArrayList();
		headers.add(new Menu("info","소개"));
		headers.add(new Menu("gallery","갤러리"));
		headers.add(new Menu("tv","tv"));
		headers.add(new Menu("notice","공지사항"));
		
		request.setAttribute("headers",headers);
		
		log(request);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("view/template.jsp");
		try {
			dispatcher.forward(request, response);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	void log(HttpServletRequest request) {
		
		String logUrl = "logForm.jsp";
		for(Cookie cc : request.getCookies()){
			if(cc.getName().equals("pname")){
				request.setAttribute("pname", cc.getValue());
				logUrl = "logMain.jsp";
				break;
			}
		}
		
		request.setAttribute("logUrl", logUrl);
	}
}
