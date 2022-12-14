<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh toán</title>
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
	 
	 <% giohangbo ghbo = (giohangbo)session.getAttribute("gio");
	 	if(ghbo!=null && ghbo.ds.size() > 0) {
	 		double tongtien=0;
	 %>
	 	<tr>
	 		<td colspan="3">
	 			<h1>THANH TOÁN</h1>
	 		</td>
	 	</tr>
	 	
	 	<tr>
	 		
	 		<td width="800" valign="top" >
		 		<table class="table table-hover">
		 			 <tr>
					    <td><b>Tên sách</b></td>
					    <td><b>Số lượng</b></td>
					    <td><b>Giá bán</b></td>
					    <td><b>Thành tiền</b></td>
				     </tr>
				     <tr>
				     
		      	 	 </tr>
			      	 <% for(giohangbean list: ghbo.ds) {%>
				      	 	<tr>
					      	 	<td>
					      	 		<img alt="" src="<%=list.getAnh() %>" width="100">
					      	 		<%=list.getTensach()%>
					      	 	</td>
					      	 	<td>
					      	 		<input type="text" value="<%=list.getMasach() %>" name="ms" style="display: none">
					      	 		<p><%=list.getSoluong() %></p>
					      	 	</td>
					      	 	<td> <%=list.getGia() %> </td>
					      	 	<td> <%=list.getThanhtien() %> </td>
				      	 	</tr>
			 				<% tongtien+=list.getThanhtien();
			 			} %>
			 			
		      	 	</table>
		      	 	
		      	<h4><b>Tổng tiền: <%=Math.round(tongtien) %></b></h4>

				<form action="thanhtoanController" method="post">
		      	 		<input type="submit" name="thanhtoan" value="Thanh toán" class="btn-primary">
		      	</form>
	      	 	
	 		</td>
	 		
	 			
	 	</tr>
    <% } else{ %>
		 <p>Giỏ hàng trống! Xin mời <a href="htsachController">Mua hàng</a></p>
	<%}%>
	 	
	 </table>
	 
	 

</body>
</html>