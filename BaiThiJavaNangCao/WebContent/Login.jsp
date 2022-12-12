<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login Form </title>
	<style>
			body {font-family: Arial, Helvetica, sans-serif;}
	form {border: 3px solid #f1f1f1;}
	
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

<body>
	<h1 style="text-align: center; font-size: 50px; ">Login Form</h1>
	
	<form action="/hienthididongController" method="post">
	  <div class="imgcontainer">
	    <img src="didong_image/img_avatar2.png" alt="Avatar" class="avatar">
	  </div>
	
	  <div class="container">
	    <label for="uname"><b>Username</b></label>
	    <input type="text" placeholder="Enter Username" name="uname" required>
	
	    <label for="psw"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="psw" required>
	        
	    <button type="submit">Login</button>
	    <label>
	      <input type="checkbox" checked="checked" name="remember"> Remember me
	    </label>
	  </div>
	
	  <div class="container" style="background-color:#f1f1f1">
	    <a href="RegisterController" class="registerbtn">Register</a>
	  </div>
	</form>
</body>

</html>