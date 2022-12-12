<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
	
</style>
<body>
<!-- Thanh MeNu -->
	<nav  class="navbar navbar-inverse" >
	  	<div  class="container-fluid">
	    	<ul class="nav navbar-nav">
	      		<li class="active"><a href="htsachController">Trang Chủ</a></li>
	      		<li><a href="htgioController">Giỏ hàng</a></li> 
	      		<li><a href="thanhtoan.jsp">Thanh toán</a></li>
	      		<li><a href="lichsumuahang.jsp">Lịch sử mua hàng</a></li>
	    	</ul>
	    	<ul class="nav navbar-nav navbar-right">
	    		<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Xin chào, </a></li>
	    		
	    		<li><a href="LoginController"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	    	
	      		<li><a href="Register.jsp"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
      
	    	</ul>
	  	</div>
	</nav>
	
	<table width="1200" align="center">
 	<tr>
 		<td width="300" valign="top">
 			<table class="table table-hover">
      	 	     <tr>
      	 	        <td>
      	 	          <a href="htsachController?ml=">     	 	            
      	 	          </a>  
      	 	        </td>
      	 	      </tr>
      	 	      
      	 	</table>
 		</td>
 		<td width="800" valign="top" >
 			 <table class="table table-hover">
	      	 		<tr>
	      	 		   <td>
		      	 		   <img src=""><br>
		      	 		  
		      	 		   <a href="">
		      	 		     <img src="mua.jpg">
		      	 		  </a> 
	      	 		   </td>

	      	 		   <td>

		      	 		   <a href="">
		      	 		     <img src="mua.jpg">
		      	 		  </a> 
	      	 		   </td>	      	 		   	      	 		  	      	 		  
	      	 		</tr>	      	 	
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
</html>