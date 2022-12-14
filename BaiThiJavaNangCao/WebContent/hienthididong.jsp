<%@page import="bean.didongbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Di Động Online</title>
<div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      <h4 class="text-white">Collapsed content</h4>
      <span class="text-muted">Toggleable via the navbar brand.</span>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>
</head>
<body>
	<nav class="navbar navbar-inverse" >
	  <div class="container-fluid">
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="htsachController">Trang chủ</a></li>
	      <li><a href="htgioController">Giỏ hàng</a></li> <%-- <b>
      	<%	try {
	      		didongbo ghbo = (giohangbo)session.getAttribute("gio");
	      		out.print(ghbo.ds.size());
      		} catch(Exception e) {}
      	%> </b> --%>
	      <li><a href="thanhtoan.jsp">Thanh toán</a></li>
	      <li><a href="lichsu.jsp">Lịch sử mua hàng</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="thoat.jsp"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
	      <%if(session.getAttribute("dn")!=null) {%>
	      	<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Xin chào, <%=session.getAttribute("dn") %></a></li>
	      <%}else{ %>
	      	<li><a href="dangnhapController"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      <%} %>
	    </ul>
	  </div>
	</nav>
	
	<table width="1000" align="center">
 	<tr>
 		<td width="200" valign="top">
 			<table class="table table-hover">
      	 	  <%
      	 	ArrayList<loaibean> dsloai=(ArrayList<loaibean>) request.getAttribute("dsloai");
      	 	  for(loaibean loai: dsloai) {%>
      	 	     <tr>
      	 	        <td>
      	 	          <a href="hienthididongController?ml=<%=loai.getMaLoai()%>">
      	 	             <%=loai.getTenLoai() %>
      	 	          </a>  
      	 	        </td>
      	 	      </tr>
      	 	      <%} %>
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
 			 <form action="htsach.jsp" method="post">
				  <input class="form-control" name="txttk" type="text" value="" placeholder="Nhap tt"> <br>
				  <input name="butt" type="submit" value="Search" class="btn-primary">
			</form>

 		</td>
 		
 	</tr>
 </table>
</body>
</body>
</html>