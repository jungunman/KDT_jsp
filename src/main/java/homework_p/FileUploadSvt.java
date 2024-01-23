package homework_p;

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
import java.util.regex.Pattern;

@WebServlet("/FileUploadSvt")
@MultipartConfig(
		location = "C:\\woong\\apache-tomcat-10.1.18\\temp",
		maxFileSize = 1024*1024*50,
		maxRequestSize = 1024*1024*1024,
		fileSizeThreshold = 1024*1024*50
		)
public class FileUploadSvt extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FileUploadSvt() {
        super();
     
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher;
		
		Part picture = request.getPart("picture");
		Part resume = request.getPart("resume");
		
		String imgStr = picture.getSubmittedFileName();
		String resumeStr = resume.getSubmittedFileName();
		
		
		if( !Pattern.matches("^(jpeg|jpg|png|gif|pdf|bmp)$", imgStr.substring(imgStr.lastIndexOf(".")+1).toLowerCase())
				||!Pattern.matches("^(doc|hwp|txt|pdf)$", resumeStr.substring(resumeStr.lastIndexOf(".")+1).toLowerCase())) {
			dispatcher = request.getRequestDispatcher("homework/fileUpload/redirects/failUpload.jsp");
			picture.delete();
			dispatcher.forward(request, response);
		}
		
		
		String picturePath = "C:\\woong\\workspace\\KDT_jsp\\src\\main\\webapp\\homework\\fileUpload\\pictures";
		
		picture.write(picturePath+"\\"+imgStr);
		picture.delete();
		
		String resumePath = "C:\\woong\\workspace\\KDT_jsp\\src\\main\\webapp\\homework\\fileUpload\\resumes";
		resume.write(resumePath+"\\"+resumeStr);
		resume.delete();
		
		request.getSession().setAttribute("userInfo", new DetailsInfo(
				request.getParameter("pid"), 
				request.getParameter("pwd"), 
				request.getParameter("pname"), 
				imgStr, 
				resumePath+"\\"+resumeStr));
		
		request.getSession().setAttribute("url", "screens/detail.jsp");
		
		dispatcher = request.getRequestDispatcher("homework/fileUpload/redirects/successRegister.jsp");
		dispatcher.forward(request, response);
		
	}

}
