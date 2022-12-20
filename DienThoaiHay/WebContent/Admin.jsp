<%@page import="bean.dangnhapadminbean"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="bo.giohangbo"%>
<%@page import="bo.didongbo"%>
<%@page import="bo.loaibo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.didongbean"%>
<%@page import="dao.didongdao"%>
<%@page import="bean.loaibean"%>
<%@page import="dao.loaidao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>DienThoaiHay.vn</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
    	<li><a href="loaiadminController">Quản lý loại</a></li>
      	<li><a href="sachadminController">Quản lý sách</a></li>
       	<li><a href="thanhtoanController">Thanh toán</a></li>
       	<li><a href="xacnhanController">Xác nhận chuyển tiền</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="thoatadminController"><span class="glyphicon glyphicon-user">
      </span> LogOut</a></li>
      <%if(session.getAttribute("admin")!=null){ %>
      <li><a href="#"><span class="glyphicon glyphicon-log-in">
      <% dangnhapadminbean admin = (dangnhapadminbean) session.getAttribute("admin");%>
      </span> Xin chao: <%=admin.getTenDangNhap()%></a></li>
      <%}else{ %>
      <li><a href="dangnhapadminController"><span class="glyphicon glyphicon-log-in">
      </span> Login</a></li>
      <%} %>
    </ul>
  </div>
</nav>

 <table width="1000" align="center">
 	<tr>
 		<td colspan="3">
 			<h1>BÁN SÁCH ONLINE</h1>
 		</td>
 	</tr>
 	
 	<tr> 		
 		<td></td>	
 	</tr>
 </table>
</body>
</html>