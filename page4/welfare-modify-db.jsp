<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.text.*" %>
    <% request.setCharacterEncoding("utf-8"); %> 
    <%@ page import="dao.bean.ndao" %>
    <%@ page import="dao.bean.notDAO" %>
<!DOCTYPE html>
<html>
<body>
<% 
int id;
String passwd="",sql,sql1,type,t;
String title="", content="";

id=Integer.parseInt(request.getParameter("id"));

title=request.getParameter("title");
content=request.getParameter("content");
type=request.getParameter("type");
content=content.replace("\n","<br>");


notDAO bbsDAO = new notDAO();
int res=bbsDAO.modi(id,title,content,type);

if (res==-1) {
	%>
	<center>
	<h2>수정 실패했습니다</h2>
	<a href="page4_welfare_notice.jsp">게시글 목록 보기</a>
	</center>
	<%
}
	else {
		%>
		<center>
		<h2>수정 성공</h2>
		<a href="page4_welfare_notice.jsp">게시글 목록 보기</a>
		</center>
		
		<%
	}
%>


</body>
</html>