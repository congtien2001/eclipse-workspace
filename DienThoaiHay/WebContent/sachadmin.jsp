<%@page import="bean.didongbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.dangnhapadminbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Quản lý sách</title>
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
	      <%
	      if(session.getAttribute("admin")!=null){
	      %>
	      <li><a href="#"><span class="glyphicon glyphicon-log-in">
	      <%
	      dangnhapadminbean admin = (dangnhapadminbean) session.getAttribute("admin");
	      %>
	      </span> Xin chao: <%=admin.getTenDangNhap()%></a></li>
	      <%
	      }else{
	      %>
	      <li><a href="dangnhapadminController"><span class="glyphicon glyphicon-log-in">
	      </span> Login</a></li>
	      <%
	      }
	      %>
	    </ul>
	  </div>
	</nav>
	
	<%
		ArrayList<didongbean> dssach = (ArrayList<didongbean>) session.getAttribute("sach");
		%>
	
	<table width="1000" align="center">
	 	<tr>
	 		<td colspan="3">
	 			<h1>Quản lý sách</h1>
	 			<a href="themsachController" class="btn btn-primary">Thêm sách</a>
	 			<hr>
	 			Hiện có <b><%=dssach.size()%></b> loại sách trong CSDL
	 			<hr>
	 		</td>		
	 	</tr>
	 	
	 	<tr>
	 		<th>Ảnh</th>
	 		<th>Mã sách</th>
	 		<th>Tên sách</th>
	 		<th>Mã loại</th>
	 		<th>Tác giả</th>
	 		<th>Giá</th>
	 		<th>Số lượng</th>
	 	</tr>
	 	<%
	 	for(didongbean s : dssach) {
	 	%>
		 	<tr>
		 		<td><img width="80" src="<%=s.getAnh()%>"></td>
		 		<td><%=s.getMaDiDong() %></td>
		 		<td><%=s.getTenDiDong() %></td>
		 		<td><%=s.getMaLoai() %></td>
<%-- 		 		<td><%=s.getTacgia() %></td> --%>
		 		<td><%=s.getGia() %></td>
		 		<td><%=s.getSoLuong() %></td>
		 		<td><a class="btn btn-default" href="suaxoasachController?sua=sua&anh=<%=s.getAnh()%>&ms=<%=s.getMaDiDong()%>&ten=<%=s.getTenDiDong()%>&ml=<%=s.getMaLoai()%>&gia=<%=s.getGia()%>&sl=<%=s.getSoLuong()%>">Sửa</a></td>
		 		<td><a class="btn btn-default" href="suaxoasachController?xoa=xoa&ms=<%=s.getMaDiDong()%>">Xóa</a></td>
		 	</tr>
		<%} %>
	 </table>

	


	
	
</body>


</html>