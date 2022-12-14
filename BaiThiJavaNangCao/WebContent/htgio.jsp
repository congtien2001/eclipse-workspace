<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Giỏ Hàng</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="hienthididongController">Trang chủ</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="htgioController">Giỏ hàng <b>
      	<%	try {
	      		giohangbo ghbo = (giohangbo)session.getAttribute("gio");
	      		out.print(ghbo.ds.size());
      		} catch(Exception e) {}
      	%> </b>
      </a></li>
       <li ><a href="thanhtoan.jsp">Thanh toán</a></li>
       <li><a href="lichsu.jsp">Lịch sử mua hàng
       <%=session.getAttribute("ss") %>
       </a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="thoat.jsp"><span class="glyphicon glyphicon-user">
      </span> LogOut</a></li>
      <%if(session.getAttribute("dn")!=null){ %>
      <li><a href="#"><span class="glyphicon glyphicon-log-in">
      </span> Xin chao: <%=session.getAttribute("dn")%></a></li>
      <%}else{ %>
      <li><a href="ktdn"><span class="glyphicon glyphicon-log-in">
      </span> Login</a></li>
      <%} %>
    </ul>
  </div>
</nav>

 <table width="1000" align="center">
 	<tr>
 		<td width="200" valign="top">
 			<table class="table table-hover">
      	 	  <%
      	 	ArrayList<loaibean> dsloai= (ArrayList<loaibean>) request.getAttribute("dsloai");
      	 	  for(loaibean loai: dsloai) {%>
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
		 		<table class="table table-hover">
		 			 <tr>
					 	<td></td>
					 	<td></td>
					    <td>Tên sách</td>
					    <td>Số lượng</td>
					    <td>Giá bán</td>
					    <td>Thành tiền</td>
				     </tr>
			      	 <% giohangbo ghbo = (giohangbo)session.getAttribute("gio");
			      	 	double tongtien=0;
			      	 	if(ghbo!=null) {
			      	 		for(giohangbean list: ghbo.ds) {%>
					      	 	<tr>
					      	 		<td> <input type="checkbox" name="check" value="<%=list.getMasach()%>"> </td>
						      	 	<td> <%=list.getTensach()%> </td>
						      	 	<td>
						      	 		<input type="text" value="<%=list.getMasach() %>" name="ms" style="display: none">
						      	 		<input type="text" value="<%=list.getSoluong() %>" name="<%=list.getMasach() %>" style="width: 25px" min="1">
						      	 		<input type="submit" name="capnhat" value="Cập nhật">
						      	 	</td>
						      	 	<td> <%=list.getGia() %> </td>
						      	 	<td> <%=list.getThanhtien() %> </td>
						      	 	<td> <a href="htgioController?xoa1=Xóa1&ms=<%=list.getMasach()%>">Xóa</a> </td>
						      	 	<% tongtien+=list.getThanhtien(); %>
					      	 	</tr>
			 			<% }} else{ %>
			 			 		<p>Giỏ hàng trống! Xin mời <a href="htsachController">Mua hàng</a></p>
			 			<%}%>
		      	 	</table>
	      	 	
	      	 	<b>TỔNG TIỀN <%=Math.round(tongtien) %></b><br>
	      	 	
	      	 	<input type="submit" name="traAll" value="Trả lại toàn bộ" class="btn btn-default">
	      	 	<input type="submit" name="xoa" value="Xóa" class="btn btn-default">
	 		</td>
 		</form>
 		
 		
 		<td width="200" valign="top" class="form-control"> 
 			 <form action="htsachController " method="post">
				  <input class="form-control" name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
				  <input name="butt" type="submit" value="Search" class="btn-primary">
			</form>
 		</td>
 		 		
 	</tr>
 </table>
</body>

</body>
</html>