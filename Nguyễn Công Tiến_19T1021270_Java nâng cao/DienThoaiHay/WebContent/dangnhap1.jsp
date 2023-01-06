<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Đăng nhập </title>
	<link rel=' icon'  href="didong_image/logo.png"  type="image/x-icon"/>
	<style>
			body {font-family: Arial, Helvetica, sans-serif;}
	form {
		border: 3px solid #f1f1f1;
	}	
	input[type=text], input[type=password] {
	  width: 100%;
	  padding: 12px 20px;
	  margin: 8px 0;
	  display: inline-block;
	  border: 1px solid #ccc;
	  box-sizing: border-box;
	}	
	button {
	  background-color: #04AA6D;
	  color: white;
	  padding: 14px 20px;
	  margin: 8px 0;
	  border: none;
	  cursor: pointer;
	  width: 100%;
	}
	button:hover {
	  opacity: 0.8;
	}	
	.registerbtn {
	  width: auto;
	  padding: 10px 18px;
	  background-color: #f44336;
	  text-decoration: none;
	  color: #fff;
	}
	
	.imgcontainer {
	  text-align: center;
	  margin: 24px 0 12px 0;
	}
	
	img.avatar {
	  width: 20%;
	  border-radius: 20%;
	}
	
	.container {
	  padding: 16px;
	}
	
	</style>
</head>

<body style="display: flex; justify-content: center; align-items: center;">
	<div id="main" style="width: 400px;">
		<h1 style="text-align: center; font-size: 50px; ">Đăng Nhập</h1>
	
	<form action="ktdnController" method="post">
	  <div class="imgcontainer">
	    <img src="didong_image/logo.png" alt="Avatar" class="avatar">
	  </div>
	
	  <div class="container">
	    <label for="uname"><b>Tên đăng nhập:</b></label>
	    <input type="text" placeholder="Tên đăng nhập" name="txtun" required>
	
	    <label for="psw"><b>Mật khẩu</b></label>
	    <input type="password" placeholder="Nhập mật khẩu" name="txtpass" required>
	        <%
	        if(request.getAttribute("kt") != null){
				out.print("<b>Dang nhap sai!</b>");
	        }
	        %>
	    <button type="submit">Đăng nhập</button>
	    
	    <label>
	      <input type="checkbox" checked="checked" name="remember"> Remember me
	    </label>
	  </div>
	
	  <div class="container" style="background-color:#f1f1f1">
	    <a href="dangkyController" class="registerbtn">Đăng ký</a>
	  </div>
	</form>
	</div>
</body>

</html>