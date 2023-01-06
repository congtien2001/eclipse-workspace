<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DienThoaiHay.vn</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel=' icon'  href="didong_image/logo.png"  type="image/x-icon"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="ktdnController"><span class="glyphicon glyphicon-log-in"></span> Trang Khách hàng</a></li>
	    </ul>
	  </div>
	</nav>



 <table width="1000" align="center">
 
 	<tr>
 		<td colspan="3">
 			<h1>BÁN SÁCH ONLINE - ADMIN</h1>
 		</td>
 	</tr>
 	
 	<tr>
 		
 		<td width="800" valign="top" >
 			 <form action="dangnhapadminController" method="post">
			  	un=<input name="txtun" type="text" value="" placeholder="Nhap un"> <br>
			  	pass=<input name="txtpass" type="password" value=""> <br>
			  	<%
					if(request.getAttribute("kt") != null) {
						out.print("<b>Dang nhap sai!</b>");
					}
				%>
			  	<input name="butt" type="submit" value="Login">
			</form>
 		</td>
 		
 	</tr>
 	
 </table>



</body>
</html>