package basic_p;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;

/**
 * Servlet implementation class UpRegSvt
 */
@WebServlet("/UpRegSvt")
@MultipartConfig( 	//서버에 임시 저장될 위치
					location = "D:\\woong\\apache-tomcat-10.1.18\\temp",
					//파일 최대 크기
					maxFileSize = 1024*1024*10,
					//요청정보 최대크기
					maxRequestSize = 1024*1024*1000,
					//파일 최대 크기
					fileSizeThreshold = 1024*1024*10
					)
public class UpRegSvt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpRegSvt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		System.out.println("pid : "+request.getParameter("pid"));
		
		Part ff= request.getPart("ff");
		
		String [] arr = ff.getHeader("content-disposition").split(";");
		
		String fileName = "";
		
		for (String ttt : arr) {
			String tt = ttt.trim().replaceAll("\"", "");
			if(tt.startsWith("filename=")) {
				fileName = tt.substring(tt.indexOf("=")+1);
			}
		}
		
		
		//절대 경로 가져오기
		String dirName = request.getServletContext().getRealPath("uploaded_location"); 
		//개발할때의 절대경로
		dirName= "D:\\woong\\Sony\\jspKDT\\src\\main\\webapp\\uploaded_location";
		
		
		ff.write(dirName+"\\"+fileName);
		ff.delete(); // 임시 폴더에 있는 파일 제거
		
		//response.sendRedirect("file/upForm.jsp");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("file/alert.jsp");
		dispatcher.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

