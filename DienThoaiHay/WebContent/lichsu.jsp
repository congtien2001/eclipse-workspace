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
<title>Lịch sử mua hàng</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel=' icon'  href="didong_image/logo.png"  type="image/x-icon"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
	* {box-sizing: border-box;
		}
	body {
	  margin: 0;
	  font-family: Arial, Helvetica, sans-serif;
	}
	.h1{
		text-align: center;
		background-color:#EF4444 ;
	}
	.anh1{

	}
	
	.anh{
		vertical-align: bottom;
		font-size: 20px;
		font-weight: bold;

	}
	.topnav {
	  overflow: hidden;
	  background-color: #e9e9e9;
	  font-size: 20px;
	  font-weight: bold;
	}	
	.topnav a {
	  float: left;
	  display: block;
	  color: black;
	  text-align: center;
	  padding: 14px 16px;
	  text-decoration: none;
	  font-size: 17px;
	}	
	.topnav a:hover {
	  background-color: #ddd;
	  color: black;
	}	
	.topnav a.active {
	  background-color: #04AA6D;
	}	
	.topnav .search-container {
	  float: center;
	}
	.topnav .search-container .active {
	  float: right;
	}
	
	.topnav input[type=text] {
	  padding: 6px;
	  margin-top: 8px;
	  font-size: 17px;
	  border: none;
	}
	
	.topnav .search-container button {
	  float: center;
	  padding: 6px 10px;
	  margin-top: 8px;
	  margin-right: 16px;
	  background: #ddd;
	  font-size: 17px;
	  border: none;
	  cursor: pointer;
	}
	
	.topnav .search-container button:hover {
	  background: #ccc;
	}
	
	@media screen and (max-width: 600px) {
	  .topnav .search-container {
	    float: none;
	  }
	  .topnav a, .topnav input[type=text], .topnav .search-container button {
	    float: none;
	    display: block;
	    text-align: left;
	    width: 100%;
	    margin: 0;
	    padding: 14px;
	  }
	  .topnav input[type=text] {
	    border: 1px solid #ccc;  
	  }
	}
	</style>
</head>
<body>


	<!-- THANH MENU -->	
	<div class="topnav">
		  <a class="active" href="htsachController">Trang chủ</a>  
		  <a class="active" href="htgioController">Giỏ hàng
		  	<%
		      	try {
						giohangbo ghbo = (giohangbo)session.getAttribute("gio");
						out.print(ghbo.ds.size());
		      	    } catch(Exception e) {}
		      	%>
		  </a>
		  <a class="active" href="thanhtoanController">Thanh toán </a>
		  <a class="active" href="lichsuController">Lịch sử mua hàng</a>
		  <div class="search-container">
		    <form action="htsachController" method="post">
		      <input type="text" placeholder="Tìm kiếm" name="txttk">
		      <button type="submit"><i class="fa fa-search"></i></button>
		      
		      <a class="active " href="thoatController">Đăng Xuất
		  		<%if(session.getAttribute("dn")!=null){%>
		  	  </a>
		  
		    </form>
		  </div>
	</div>


	
	
	
	
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
		 			<%}}%>
	      	 </table>
    
 		</td>
 		
 		
 		
<!--  		<td width="200" valign="top" class="form-control"> 
 			 <form action="htsachController" method="post">
				  <input class="form-control" name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
				  <input name="butt" type="submit" value="Search" class="btn-primary">
			</form>
 		</td> -->
 		
 		
 	</tr>
 </table>


</body>
</html>