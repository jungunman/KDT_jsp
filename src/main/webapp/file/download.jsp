<%@page import="java.io.FileInputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%	
    
    	String fileName = "1.jpg";
    	String path = request.getServletContext().getRealPath("pictures/"+fileName);
    	path = "D:\\woong\\Sony\\jspKDT\\src\\main\\webapp\\pictures\\"+fileName;
    	
    	
    	
    	//1. 클라이언트 컴퓨터에 다운로드할 대화상자 열기 및 다운로드 위치(파일명) 설정
    	response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileName, "utf-8"));
    	
    	//2. outputStream 초기화 --> 에러 삭제용
    	out.clear();
    	out = pageContext.pushBody();
    	
    	//3. sos ==> 클라이언트 파일쓰기 stream
    	//4. fis ==> 서버 파일 일기 stream
   		try(ServletOutputStream sos = response.getOutputStream();
   				FileInputStream fis = new FileInputStream(path)){
   		//5. 파일 내용 전송
   			byte [] buf = new byte[1024];
   			while(fis.available()>0){
   				int len = fis.read(buf);
   				sos.write(buf, 0, len);
   			}
   		}
	    	
    
    %>