package projectPractice_p;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import homework_db_p.MemberDAO;
import homework_db_p.MemberDTO;

/**
 * Servlet implementation class JoinSvt
 */
public class JoinSvt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinSvt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDTO dto = new MemberDTO();
		dto.setId(request.getParameter("id"));
		dto.setPwd(request.getParameter("pwd"));
		dto.setNickName(request.getParameter("nickName"));
		dto.setFrontNum(request.getParameterValues("regident")[0]);
		dto.setBackNum(request.getParameterValues("regident")[1]);
		dto.setPhoneNumber(request.getParameter("phoneNum"));
		dto.setEmail(request.getParameter("email"));
		
		int result = new MemberDAO().joinMember(dto);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("0_project_practice/regs/checkJoin.jsp?result="+result);
		dispatcher.forward(request, response);
		
	
	}

}
