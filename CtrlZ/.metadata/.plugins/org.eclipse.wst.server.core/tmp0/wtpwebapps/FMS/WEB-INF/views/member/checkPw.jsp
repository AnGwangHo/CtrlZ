<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	String passwd = request.getParameter("passwd");
	String repasswd = request.getParameter("repasswd");
%>
<%=(passwd.equals(repasswd)) %>