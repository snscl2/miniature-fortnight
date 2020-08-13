<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%
request.setCharacterEncoding("UTF-8");	// basichtml 에서 넘어오는 값을 UTF-8 형식으로 받아옴
String memo = request.getParameter("memo");	// basichtml에서 넘어온 textarea값을 memo라는 스트링변수로 저장
session.setAttribute("memo",memo);	// memo라는 이름으로 세션에 저장
memo = (String)session.getAttribute("memo");	// memo변수에 세션에 저장된 memo라는걸 String 타입으로 불러옴
File file = new File("/home/com/eclipse/jee-2020-06/eclipse/input.txt");	// 파일 변수/경로 지정
file.createNewFile();	// 파일 생성
FileWriter fw = new FileWriter("/home/com/eclipse/jee-2020-06/eclipse/input.txt");	// 파일 쓰기 변수 지정
fw.write(memo);	// memo 내용을 쓰기
fw.close();	// file close.
%>
<script>
	alert('input이 생성되었습니다.');	// 알림창
	location.href="test.jsp";	// input 파일을 생성하면 결과창으로 돌아갈 수 있게 처리 redirect / location.href
</script>