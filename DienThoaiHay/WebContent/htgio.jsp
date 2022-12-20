<%@page import="java.lang.reflect.Array"%>
<%@page import="bean.giohangbean"%>
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
  <title>Giỏ hàng</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel=' icon'  href="didong_image/logo.png"  type="image/x-icon"/>
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
 			<h1>GIỎ HÀNG</h1>
 		</td>
 	</tr>
 	
 	<tr>
 		<td width="200" valign="top">
 			<table class="table table-hover">
      	 	  <%loaibo lbo = (loaibo) request.getAttribute("dsloai");
      	 	  	for(loaibean loai: lbo.getLoai()) {
      	 	   %>
      	 	     <tr>
      	 	        <td>
      	 	          <a href="htsachController?ml=<%=loai.getMaLoai()%>">
      	 	             <%=loai.getTenLoai() %>
      	 	          </a>  
      	 	        </td>
      	 	      </tr>
      	 	      <%} %>
      	 	</table>
 		</td>
 		
 		
 		
 		<form action="suaxoaController" method="get">
	 		<td width="800" valign="top" >
		 		<%
		 		giohangbo ghbo = (giohangbo)session.getAttribute("gio");
		 		if(ghbo!=null && ghbo.ds.size() > 0) {%>
		 			<table class="table table-hover">
			 			 <tr>
						 	<td></td>
						 	<td></td>
						    <td><b>Tên sách</b></td>
						    <td><b>Số lượng</b></td>
						    <td><b>Giá bán</b></td>
						    <td><b>Thành tiền</b></td>
					     </tr>
					     
				      	 <% 
				      	 	double tongtien=0;
			      	 		for(giohangbean list: ghbo.ds) {%>
					      	 	<tr>
					      	 		<td> <input type="checkbox" name="check" value="<%=list.getMaDiDong()%>"> </td>
						      	 	<td> <img alt="" src="<%=list.getAnh() %>" width="100"> </td>
						      	 	<td> <%=list.getTenDiDong()%> </td>
						      	 	<td>
						      	 		<input type="text" value="<%=list.getMaDiDong() %>" name="ms" style="display: none">
						      	 		<input type="number" value="<%=list.getSoLuong() %>" name="<%=list.getMaDiDong() %>" style="width: 50px" min="1">
						      	 		<input type="submit" name="capnhat" value="Cập nhật">
						      	 	</td>
						      	 	<td> <%=list.getGia() %> </td>
						      	 	<td> <%=list.getThanhTien() %> </td>
						      	 	<td> <a href="suaxoaController?xoa1=Xóa1&ms=<%=list.getMaDiDong()%>">Xóa</a> </td>
						      	 	<% tongtien+=list.getThanhTien(); %>
					      	 	</tr>
				 			<%}%>
			      	 	</table>
		      	 	
		      	 	<b>TỔNG TIỀN <%=Math.round(tongtien) %></b><br>
		      	 	
		      	 	<input type="submit" name="traAll" value="Trả lại toàn bộ" class="btn btn-default">
		      	 	<input type="submit" name="xoa" value="Xóa" class="btn btn-default">
		 		
		 		<%} else { %>
		 			<p>Giỏ hàng trống! Xin mời <a href="htsachController">Mua hàng</a></p>
		 		<%} %>
	 		</td>
 		</form>
 		
 		
 		
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