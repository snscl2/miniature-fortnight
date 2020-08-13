<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%
Process process = null;
BufferedReader in = null;
BufferedReader err = null;
String s = null;

try {
    String command = "make";
    process = Runtime.getRuntime().exec(command);
 
   in =  new BufferedReader (new InputStreamReader(process.getInputStream()));
  while ((s = in.readLine ())!= null) {
       out.println(s+"<br>");
  }
  err = new BufferedReader(new InputStreamReader(process.getErrorStream()));
  while (err.ready()) {
        out.println(err.readLine()+"<br>");
  }
} catch (Exception e) {
    out.println("Error : "+e);
   System.out.println(new java.util.Date()+" process.jsp "+e);
} finally {
    if (in != null) try { in.close(); }  catch (Exception sube) {}
   if (err != null) try { err.close(); }  catch (Exception sube) {}
}
response.sendRedirect("basicweb.html");
%>