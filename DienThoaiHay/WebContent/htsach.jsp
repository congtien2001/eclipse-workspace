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
	  padding: 9px;
	  font-size: 17px;
	  border: solid;
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



 <table width="900" align="center" class="anh">
 	<tr>
 		<td colspan="2">
 			<h1 class="h1">ĐIỆN THOẠI HAY</h1>
 		</td>
 	</tr>
 	
 	<tr>
 		<td width="1000"  valign="top" class="anh1" >
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
 		
 		<td width="1000" valign="top" >
 			 <table class="table table-hover" style="text-align: center;">
      	 	<%
      	 	ArrayList<didongbean> dssach = (ArrayList<didongbean>) request.getAttribute("dssach");
      	 	      	 	   	int n = dssach.size();
      	 	      	 		for(int i=0;i<n;i++){
      	 	      	 			didongbean s=dssach.get(i);
      	 	%>
	      	 		<tr>
	      	 		   <td >
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
	      	 		   <td >
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
	      	 		   <td >
		      	 		   <img src="<%=s.getAnh() %>"><br>
		      	 		   <%=s.getTenDiDong() %> <br>
		      	 		   <%=s.getGia() %> <br>
		      	 		   <a href="giohangController?anh=<%=s.getAnh()%>&ms=<%=s.getMaDiDong()%>&ts=<%=s.getTenDiDong()%>&gia=<%=s.getGia()%>">
		      	 		     <img src="mua.jpg" >
		      	 		  </a> 
	      	 		   </td>
	      	 		   <%} %>	      	 		  
	      	 		</tr>
	      	 	<%}}} %>
      	 	</table>
 		</td> 			
 	</tr>
 </table>
</body>
</html>