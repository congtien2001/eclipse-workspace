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
	<!-- THANH MENU -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="htsachController">Trang chủ</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="htgioController">Giỏ hàng <b>
      	<%
      	try {
      		      		giohangbo ghbo = (giohangbo)session.getAttribute("gio");
      		      		out.print(ghbo.ds.size());
      	      		} catch(Exception e) {}
      	%>
      </b></a></li>
       <li ><a href="thanhtoanController">Thanh toán</a></li>
       <li><a href="lichsuController">Lịch sử mua hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="thoatController"><span class="glyphicon glyphicon-user">
      </span> LogOut</a></li>
      <%
      if(session.getAttribute("dn")!=null){
      %>
      <li><a href="#"><span class="glyphicon glyphicon-log-in">
      </span> Xin chao: <%=session.getAttribute("dn")%></a></li>
      <%
      }else{
      %>
      <li><a href="ktdnController"><span class="glyphicon glyphicon-log-in">
      </span> Login</a></li>
      <%
      }
      %>
    </ul>
  </div>
</nav>


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
		      	 		     <img src="mua.jpg">
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
		      	 		     <img src="mua.jpg">
		      	 		  </a> 
	      	 		   </td>
	      	 		   <%} %>	      	 		  
	      	 		</tr>
	      	 	<%} %>
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