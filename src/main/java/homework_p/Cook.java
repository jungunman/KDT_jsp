package homework_p;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;

public class Cook {

	public Cook(HttpServletResponse response) {
		
		response.addCookie( new Cookie("aaa", "1111"));
		response.addCookie( new Cookie("bbb", "2222"));
		response.addCookie( new Cookie("ccc", "3333"));
		response.addCookie( new Cookie("ddd", "4444"));
		response.addCookie( new Cookie("eee", "5555"));
		
	}
	
	
	
	
	
}
