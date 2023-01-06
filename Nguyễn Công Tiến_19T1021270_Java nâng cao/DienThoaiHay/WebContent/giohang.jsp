<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel=' icon'  href="didong_image/logo.png"  type="image/x-icon"/>
</head>
<body>
	<%
		String anh=request.getParameter("anh");
	  	String masach=request.getParameter("ms");
	 	String tensach=request.getParameter("ts");
	 	long gia=Long.parseLong(request.getParameter("gia"));
	 	long soluong=1;
	 	giohangbo gh=null;
	 	if(session.getAttribute("gio")==null){//Mua lan dau
		 	gh= new giohangbo();
	 		session.setAttribute("gio", gh);
	 	}
	 	//b1: Lay session luu vao bien
	 	gh=(giohangbo)session.getAttribute("gio");
	 	//b2: Thao tac tren bien
	 	gh.Them(anh, masach, tensach, soluong, gia);
	 	//b3: luu bien vao session
	 	session.setAttribute("gio",gh);
	 	//Hien thi thi gio hang
	 	
// 	 	out.print(anh + masach + tensach + gia + soluong);
	 	
	 	response.sendRedirect("htsachController");
	%>
</body>
</html>