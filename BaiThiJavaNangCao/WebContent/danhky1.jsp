<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegisterForm</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>
	<form action="LoginController" method="post">
  <div class="container">
    <h2 style="text-align: center;">Đăng ký</h2>
    <p style="text-align: center";>Điền đầy đủ thông tin để đăng ký.</p>
    <hr>

    <label for="email"><b>Họ tên:</b></label>
    <input type="text" placeholder="Nhập họ tên" name="email" id="email" required>
    
    <label for="email"><b>Địa chỉ:</b></label>
    <input type="text" placeholder="Nhập địa chỉ" name="email" id="email" required>
    
    <label for="psw"><b>Số điện thoại:</b></label>
    <input type="text" placeholder="Nhập số điện thoại" name="psw" id="psw" required>
	
	<label for="psw"><b>Email:</b></label>
    <input type="text" placeholder="Nhập email" name="psw" id="psw" required>
    
    <label for="psw"><b>Tên đăng nhập:</b></label>
    <input type="text" placeholder="Nhập tên đăng nhập" name="psw" id="psw" required>
    
    <label for="psw-repeat"><b>Mật khẩu</b></label>
    <input type="password" placeholder="Nhập mật khẩu" name="psw-repeat" id="psw-repeat" required>
    
    
    <hr>


    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="LoginController">Sign in</a>.</p>
  </div>
</form>
</body>
</html>