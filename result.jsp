<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%
request.setCharacterEncoding("UTF-8");	// basichtml 에서 넘어오는 값을 UTF-8 형식으로 받아옴
BufferedReader reader = null;
reader = new BufferedReader(new FileReader("/home/com/eclipse/jee-2020-06/eclipse/input.txt"));	//파일 읽을 버퍼 생성
while(true){
	String str = reader.readLine();	// 한줄씩 읽음
	if(str==null)	// str 이 없으면
		break;	// 종료
	out.println(str+"<br>");	// str 출력
}
response.sendRedirect("test.jsp");
%>