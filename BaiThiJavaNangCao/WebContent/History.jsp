<%@page import="bean.Khachhangbean"%>
<%@page import="bean.Historybean"%>
<%@page import="bo.didongbo"%>
<%@page import="bo.loaibo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.didongbean"%>
<%@page import="dao.didongdao"%>
<%@page import="bean.loaibean"%>
<%@page import="dao.loaidao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Lịch Sử Mua Hàng</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="hienthididongController">Trang chủ</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="htgioController">Giỏ hàng</a></li>
      <li><a href="thanhtoan">Thanh toán</a></li>
       <li><a href="HistoryController">Lịch sử mua hàng</a></li>
        
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="xoa.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li>
      <%if(session.getAttribute("kh")==null){ %>
      <a href="KtdnController">
          <span class="glyphicon glyphicon-log-in"></span>
	       Login
       </a></li>
       <%} else{  %>
       <a href="#">
          <span class="glyphicon glyphicon-log-in"></span>
	       Hi <%Khachhangbean kh =(Khachhangbean)session.getAttribute("kh");
	         out.print(kh.getHoTen());%>
       </a></li>
       <%} %>
    </ul>
  </div>
</nav>
  
<table width="1000" align="center" class="table">
   
   		<td valign="top" width="200" > 
   		<table class="table table-hover">
	   		<%
	   	 ArrayList<loaibean> dsloai=
	   	 ( ArrayList<loaibean>)request.getAttribute("dsloai");
	   	 
	   			for(loaibean l: dsloai){%>
	   			   <tr><td>
	   				  <a href="htsachController?ml=<%=l.getMaLoai()%>">
	   				   <%=l.getTenLoai()%> </a>
	   				 </td>
	   				</tr>
	   		<%	}
	   		%>
   		 </table>
   		 </td>
   		<td valign="top" width="600" > 
   		<table  class="table table-hover">
	   		 <%
	   		 
	   		ArrayList<Historybean> dsls=(ArrayList<Historybean>)request.getAttribute("dslichsu");
	   		 int i=1;
	   		   for(Historybean ls: dsls){
	   		 %>
	   		   <tr>
	   		   <td><%=i %></td>
	   		   <td><%=ls.getTendidong() %> </td>
	   		     <td><%=ls.getSoLuongMua() %> </td>
	   		       <td><%=ls.getThanhTien() %> </td>
	   		         <td><%=(ls.isDamua()?"Đã chuyển tiền":"Đang đặt")%> </td>
	   		   </tr>
	   		   <%i++;} %>
   		 </table>
   		    </td>
   		<td valign="top" width="200" >
   		
   <form action="htsachController" method="get">
      <input class="form-control" name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
      <input class="btn-primary" name="butdn" type="submit" value="Search">
   	</form>	 
   		 </td>
   </tr>
</table>
</body>
</html>