package basic_p;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ForwardData {
	
	public ForwardData(HttpServletRequest request , HttpServletResponse response) {
		//이거 잘기억 subString 기준이 정해짐
		String service = request.getRequestURI().substring((request.getContextPath()+"/forward/").length());
		request.setAttribute("mainUrl","main/"+service);

		
		ArrayList<Menu> headers = new ArrayList<>();
		headers.add(new Menu("info","소개"));
		headers.add(new Menu("gallery","갤러리"));
		headers.add(new Menu("tv","tv"));
		headers.add(new Menu("notice","공지사항"));
		
		request.setAttribute("headers", headers);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("view/template.jsp");
		try {
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
