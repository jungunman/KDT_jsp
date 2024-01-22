package homework_p;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.servlet.http.HttpServletRequest;

public class PageScreen {
	public String fullUrl;
	
	public PageScreen(HttpServletRequest request) {
		
		fullUrl = "index.jsp";
		
		String nav = "rooms";
		
		if(request.getParameter("nav") != null) {
			nav = request.getParameter("nav");
		}
	
		fullUrl = "screens/"+nav+".jsp";
		
		if(request.getParameter("subTitle") !=null){
			fullUrl = "screens/"+nav+"/"+ request.getParameter("subTitle")+".jsp";
		}
		
		List<NavClass> rooms = new ArrayList<>();
		rooms.add(new NavClass("rooms", "void"));
		
		List<NavClass> reservation = new ArrayList<>();
		reservation.add(new NavClass("reservation", "room1"));
		reservation.add(new NavClass("reservation", "room2"));
		reservation.add(new NavClass("reservation", "room3"));
		
		List<NavClass> confirm = new ArrayList<>();
		confirm.add(new NavClass("confirm", "check"));
		confirm.add(new NavClass("confirm", "cancle"));
		
		List<NavClass> events = new ArrayList<>();
		events.add(new NavClass("events", "events"));
		events.add(new NavClass("events", "notice"));
		
		List<NavClass> details = new ArrayList<>();
		details.add(new NavClass("details", "room1"));
		details.add(new NavClass("details", "room2"));
		details.add(new NavClass("details", "room3"));
		
		Map<String, List<NavClass>> navs = new HashMap<>();
		navs.put("rooms", rooms);
		navs.put("reservation", reservation);
		navs.put("confirm", confirm);
		navs.put("events", events);
		navs.put("details", details);
		
		request.setAttribute("navs", navs);
	}
	
}