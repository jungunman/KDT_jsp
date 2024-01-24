package basic_p;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * Servlet implementation class DownloadSvt
 */

@WebServlet("/DownloadSvt")
public class DownloadSvt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadSvt() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileName =request.getParameter("fileName");
		response.setHeader("Content-Disposition", "attachment; fileName="+URLEncoder.encode(fileName,"utf-8"));
		
		System.out.println(request.getServletContext());
		System.out.println(request.getServletContext().getRealPath("fff"));
		
		try(ServletOutputStream sos = response.getOutputStream();
				FileInputStream fis = new FileInputStream(request.getServletContext().getRealPath("fff")+"\\"+fileName)){
			byte [] buf = new byte[1024];
   			while(fis.available()>0){
   				int len = fis.read(buf);
   				sos.write(buf, 0, len);
   			}
		}
		
		
	}

}
