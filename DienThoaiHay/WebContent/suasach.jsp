<%@page import="bean.loaibean"%>
<%@page import="bean.didongbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.dangnhapadminbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Quản lý Di Động</title>
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
	      	<li><a href="sachadminController">Quản lý Di Động</a></li>
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
		didongbean s = (didongbean) session.getAttribute("s");
		%>
	
	<form action="suaxoasachController" method="get" enctype="multipart/form-data">
		<table width="1000" align="center">
		 	<tr>
		 		<td colspan="3">
		 			<h1>Sửa thông tin Di Động</h1>
		 			<hr>
		 		</td>
		 	</tr>
		 	
		 	
		 	<tr>
		 		<td>Mã Di Động: <input type="text" name="ms" value="<%=s.getMaDiDong()%>" readonly="readonly"><br></td>
		 	</tr>
		 	<tr>
		 		<td>Tên Di Động: <input type="text" name="ten" value="<%=s.getTenDiDong()%>"><br></td>
		 	</tr>
		 	<tr>
		 		
		 		<td>
		 			Tên loại:
					<select name="ml">
					  	<%
					  		ArrayList<loaibean> dsloai = (ArrayList<loaibean>) session.getAttribute("dsloai");
					  		for(loaibean l : dsloai) {
					  	%>
					  		<option value="<%=l.getMaLoai()%>"><%=l.getTenLoai()%></option>
					  	<%} %>
					</select>
		 			<br>
		 		</td>
		 	</tr>
<%-- 		 	<tr>
		 		<td>Tác giả: <input type="text" name="tg" value="<%=s.getTacgia()%>"><br></td>
		 	</tr> --%>
		 	<tr>
		 		<td>Giá: <input type="text" name="gia" value="<%=s.getGia()%>"><br></td>
		 	</tr>
		 	<tr>
		 		<td>Số lượng: <input min="1" type="number" name="sl" value="<%=s.getSoLuong()%>"><br></td>
		 	</tr>
		 	<tr>
		 		<td><hr></td>
		 	</tr>
		 	<tr>
		 		<td><input type="submit" name="luu" value="Lưu" class="btn btn-primary"></td>
		 	</tr>
		 </table>
		 
		 
	 </form>

	


	
	
</body>


</html>