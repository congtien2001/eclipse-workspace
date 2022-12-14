<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.dangnhapadminbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		 		<th colspan="3">
		 			<h1>THÊM SÁCH</h1><br>
		 		</th>
		 		
		 	</tr>
		 	
		 	<tr>	
		 		<td>
		 			<form method="post" action="themsachController" enctype= "multipart/form-data">
						Mã sách: <input type="text" name="ms"><br>
						Tên sách: <input type="text" name="tensach"><br>
						Số lượng: <input type="number" name="sl"><br>
						Giá: <input type="number" name="gia"><br>
						Mã loại:
						<select name="ml">
						  	<%
						  		ArrayList<loaibean> dsloai = (ArrayList<loaibean>) session.getAttribute("dsloai");
						  		for(loaibean l : dsloai) {
						  	%>
						  		<option value="<%=l.getMaLoai()%>"><%=l.getTenLoai()%></option>
						  	<%} %>
						</select>
						<br>
						Số tập: <input type="text" name="sotap"><br>
					  	Ảnh: <input type="file" name="anh"><br>
					  	Tác giả: <input type="text" name="tg"><br>
					  	<hr>
					  	<input class="btn btn-primary" type="submit" value="Thêm sách"> 
					</form> 
		 		</td>	
		 	</tr>
		 	
		 	
		 </table>
	
	
	
	
	
</body>

</html>