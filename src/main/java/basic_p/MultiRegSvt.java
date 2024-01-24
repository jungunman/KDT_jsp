package basic_p;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.util.Collection;

@WebServlet("/MultiRegSvt")
@MultipartConfig(
		location = "D:\\woong\\apache-tomcat-10.1.18\\temp",
		maxFileSize = 1024 * 1024 * 30,
		fileSizeThreshold = 1024 * 1024 * 30,
		maxRequestSize = 1024 * 1024 * 1024
		)
public class MultiRegSvt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public MultiRegSvt() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getPart("ff"); //단일 파일 업로드 (파라미터 명 지정)
		Collection<Part> cp =request.getParts(); //다중 파일 업로드 (파라미터 명 지정 불가)
		
		for (Part part : cp) {
			System.out.println(part.getName());
			if(part.getName().equals("ff")) {			
				//파일 저장
				saveFile(part);
			}
		}		
		response.sendRedirect("index.jsp");

	}

	
	private void saveFile(Part file) {
		try {
			String fileStr = file.getSubmittedFileName();
			String path = "D:\\woong\\Sony\\jspKDT\\src\\main\\webapp\\uploaded_location";
		
			file.write(path+"\\"+fileStr);
			file.delete();	
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
}
