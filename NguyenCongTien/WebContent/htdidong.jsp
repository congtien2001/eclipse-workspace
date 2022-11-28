<%@page import="bean.didongbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài Kiểm tra Java Nâng cao - 19T1021270</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
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
  background-color: #2196F3;
  color: white;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
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
<!-- Search Nav -->
<div class="topnav">
  <a class="active" href="didongController">Home</a>
  <div class="search-container">
    <form action="didongController" method="post">
      <input type="text" placeholder="Search.." name="tk">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>

<!-- Hiển thị di động -->
<%	ArrayList<didongbean> dsdd = (ArrayList<didongbean>) request.getAttribute("dsdd");
	int n = dsdd.size();
%>

<%if(n==0){ %> <p style="margin: 20px 0 0 20px;"><b>Không tìm thấy di động nào!</b></p> <%} else { %>
<p style="margin: 20px 0 0 20px;"><b>Danh sách hiện có <%=n %> Di động</b></p> <%} %>

<div style="padding-left:16px; display: flex; justify-content: center; margin: 40px;">
	<table class="table table-hover">
		<tr>
			<th>Ảnh</th>
			<th>Mã di động</th>
			<th>Tên di dộng</th>
			<th>Số lượng</th>
			<th>Giá</th>
			<th>Thành tiền</th>
			<th>Mức</th>
		</tr>
			
		  <%
		  	for(int i=0; i<n; i++) {
		  		didongbean dd = dsdd.get(i);
		  %>
		  		<tr>
			  		<td><image src="<%=dd.getMadidong()%>"></td>
			  		<td><p><%=dd.getMadidong() %></p></td>
			  		<td><p><%=dd.getTendidong() %></p></td>
			  		<td><p><%=dd.getSoluong() %></p></td>
			  		<td><p><%=dd.getGia() %></p></td>
			  		<td><p><%=dd.getGia()*dd.%></p></td>
			  		<td><p><%if(dd.getGia()*dd.getSoluong() >1000000) out.print("Cao"); else out.print("Trung bình"); %></p></td>
		  		</tr>
		  		
		  <%} %>
		
  </table>
</div>	
</body>
</html>