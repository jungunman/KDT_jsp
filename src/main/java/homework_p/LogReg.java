package homework_p;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LogReg {

	public LogReg(HttpServletRequest request, HttpServletResponse response) {
		
		
		String pid = request.getParameter("pid");
		String pwd = request.getParameter("pwd");
		
		for(Cookie coo : request.getCookies()) {
			if(coo.getName().equals(pid) && coo.getValue().equals(pwd)) {
				response.addCookie(new Cookie("user", pid+"_"+pwd));
				break;
			}
		}
		
	}
	
}
