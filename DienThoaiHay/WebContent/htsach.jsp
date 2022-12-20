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
  <link rel=' icon'  href="didong_image/logo.png"  type="image/x-icon"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
	* {box-sizing: border-box;}
	
	body {
	  margin: 0;
	  font-family: Arial, Helvetica, sans-serif;
	}
	
	
	.topnav {
	  overflow: hidden;
	  background-color: #e9e9e9;
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
	  background-color: #2196F3;
	  color: white;
	}
	
	.topnav .search-container {
	  float: right;
	}
	
	.topnav input[type=text] {
	  padding: 6px;
	  margin-top: 8px;
	  font-size: 17px;
	  border: none;
	}
	
	.topnav .search-container button {
	  float: right;
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
	  <a class="active" href="ktdnController">Đăng Nhập
	  	
	  </a>
	  <a class="active" href="thoatController">Đăng Xuất
	  	<%
	      if(session.getAttribute("dn")!=null){
	      %>
	  </a>
	  <div class="search-container">
	    <form action="didongController" method="post">
	      <input type="text" placeholder="Tìm kiếm" name="tk">
	      <button type="submit"><i class="fa fa-search"></i></button>
	    </form>
	  </div>
	</div>
	
	

 <table width="1000" align="center">
 	<tr>
 		<td colspan="3">
 			<h1>ĐIỆN THOẠI HAY</h1>
 		</td>
 	</tr>
 	
 	<tr>
 		<td width="200" valign="top">
 			<table class="table table-hover">
      	 	  <%
      	 	  ArrayList<loaibean> dsloai = (ArrayList<loaibean>) request.getAttribute("dsloai");
      	 	  	  
      	 	        	 	  for(loaibean loai: dsloai) {
      	 	  %>
      	 	     <tr>
      	 	        <td>
      	 	          <a href="htsachController?ml=<%=loai.getMaLoai()%>">
      	 	             <%=loai.getTenLoai()%>
      	 	          </a>  
      	 	        </td>
      	 	      </tr>
      	 	      <%
      	 	      }
      	 	      %>
      	 	</table>
 		</td>
 		
 		<td width="800" valign="top" >
 			 <table class="table table-hover">
      	 	<%
      	 	ArrayList<didongbean> dssach = (ArrayList<didongbean>) request.getAttribute("dssach");
      	 	      	 	   	int n = dssach.size();
      	 	      	 		for(int i=0;i<n;i++){
      	 	      	 			didongbean s=dssach.get(i);
      	 	%>
	      	 		<tr>
	      	 		   <td>
		      	 		   <img src="<%=s.getAnh() %>"><br>
		      	 		   <%=s.getTenDiDong() %> <br>
		      	 		   <%=s.getGia() %> <br>
		      	 		   <a href="giohangController?anh=<%=s.getAnh()%>&ms=<%=s.getMaDiDong()%>&ts=<%=s.getTenDiDong()%>&gia=<%=s.getGia()%>">
		      	 		     <img src="mua.jpg" >
		      	 		  </a> 
	      	 		   </td>
	      	 		   <%i++;
	      	 		   if(i<n){
	      	 			s=dssach.get(i);
	      	 		     %>
	      	 		   <td>
		      	 		   <img src="<%=s.getAnh() %>"><br>
		      	 		   <%=s.getTenDiDong() %> <br>
		      	 		   <%=s.getGia() %> <br>
		      	 		   <a href="giohangController?anh=<%=s.getAnh()%>&ms=<%=s.getMaDiDong()%>&ts=<%=s.getTenDiDong()%>&gia=<%=s.getGia()%>">
		      	 		     <img src="mua.jpg" >
		      	 		  </a> 
	      	 		   </td>
	      	 		   <%} %>	      	 		  
	      	 		</tr>
	      	 	<%} %>
      	 	</table>
 		</td>
 			
 	</tr>
 </table>
</body>
</html>