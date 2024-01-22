package homework_p;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Forward {

	public Forward(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("서버 왜 이래 ㅡㅡ 1");
		for(Cookie coo : request.getCookies()) {
			request.setAttribute("success", false);
			if(coo.getName().equals(request.getParameter("id")) && coo.getValue().equals(request.getParameter("pwd"))) {
				request.setAttribute("user", new LoginUser(request.getParameter("id"), request.getParameter("pwd")));
			}
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("../index.jsp");
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
