<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.lichsubean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.websocket.Session"%>
<%@page import="bo.giohangbo"%>
<%@page import="dao.dangnhapdao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lịch sử mua hàng</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>


	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="htsachController">Trang chủ</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li ><a href="htgioController">Giỏ hàng <b>
	      	<%	try {
		      		giohangbo ghbo = (giohangbo)session.getAttribute("gio");
		      		out.print(ghbo.ds.size());
	      		} catch(Exception e) {}
	      	%> </b>
	      </a></li>
	       <li ><a href="thanhtoanController">Thanh toán</a></li>
	       <li><a href="lichsuController">Lịch sử mua hàng</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="thoatController"><span class="glyphicon glyphicon-user">
	      </span> LogOut</a></li>
	      <%if(session.getAttribute("dn")!=null){ %>
	      <li><a href="#"><span class="glyphicon glyphicon-log-in">
	      </span> Xin chao: <%=session.getAttribute("dn")%></a></li>
	      <%}else{ %>
	      <li><a href="dangnhap.jsp"><span class="glyphicon glyphicon-log-in">
	      </span> Login</a></li>
	      <%} %>
	    </ul>
	  </div>
	</nav>
	
	
	
	
	<table width="1000" align="center">
 	<tr>
 		<td colspan="3">
 			<h1>LỊCH SỬ MUA HÀNG</h1>
 		</td>
 	</tr>
 	
 	<tr>
 		
 		
 		<td width="800" valign="top" >
 			<table class="table table-hover">
	 			 <tr>
				 	<td><b>Mã hóa đơn</b></td>
				    <td><b>Tên sách</b></td>
				    <td><b>Số lượng mua</b></td>
				    <td><b>Giá bán</b></td>
				    <td><b>Ngày mua</b></td>
				    <td><b>Đã mua</b></td>
			     </tr>
		      	 <% ArrayList<lichsubean> ls = (ArrayList<lichsubean>) request.getAttribute("ls");
		      		if(ls!=null) {
		      			for(lichsubean ds : ls) {%>
				      	 	<tr>
				      	 		<td> <%=ds.getMaHoaDon()%> </td>
					      	 	<td>
					      	 		<img alt="" src="<%=ds.getAnh() %>" width="100">
					      	 		<%=ds.getTenDiDong()%>
					      	 	</td>
					      	 	<td> <%=ds.getSoLuongMua() %> </td>
					      	 	<td> <%=ds.getGia() %>/cái </td>
					      	 	<td> <%=ds.getNgayMua() %> </td>
					      	 	<td> <%=ds.isDaMua() %> </td>
				      	 	</tr>
		 			<% }} else{ %>
		 			 		<p>Lịch sử mua trống! Xin mời <a href="htsachController">Mua hàng</a></p>
		 			<%}%>
	      	 </table>
    
 		</td>
 		
 		
 		
 		<td width="200" valign="top" class="form-control"> 
 			 <form action="htsachController" method="post">
				  <input class="form-control" name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
				  <input name="butt" type="submit" value="Search" class="btn-primary">
			</form>
 		</td>
 		
 		
 	</tr>
 </table>


</body>
</html>