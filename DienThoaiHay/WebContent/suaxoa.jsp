<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String capnhat = request.getParameter("capnhat");
		String xoa = request.getParameter("xoa");
		String xoa1 = request.getParameter("xoa1");
		String traAll = request.getParameter("traAll");
		
		// CẬP NHẬT
		if(capnhat!=null) {
			try {
				String[] ms = request.getParameterValues("ms");
					
				giohangbo ghbo = (giohangbo)session.getAttribute("gio");
				for(giohangbean list: ghbo.ds) {
					String sl = request.getParameter(list.getMasach());
					out.print(sl);
					if(sl!=null) {
						list.setSoluong(Long.parseLong(sl));
					}
				}
					
				response.sendRedirect("htgioController");
			} catch(Exception e) {
				response.sendRedirect("htgioController");
			}
		}
		
		// XÓA 1 SẢN PHẨM
		if(xoa1!=null) {
			try {
				String ms = request.getParameter("ms");
				giohangbo ghbo = (giohangbo)session.getAttribute("gio");
				for(giohangbean list: ghbo.ds) {
					if(ms.equals(list.getMasach())) {
						ghbo.ds.remove(list);
					}
				}
				session.setAttribute("gio", ghbo);
				response.sendRedirect("htgioController");
			} catch(Exception e) {
				response.sendRedirect("htgioController");
			}
		}
		
		// XÓA Ở CHEKBOX
		if(xoa!=null) {
			try {
				String[] dl = request.getParameterValues("check");
				giohangbo ghbo = (giohangbo)session.getAttribute("gio");
				for(String ms:dl) {
					out.print(ms);
					ghbo.Xoa(ms);
				}
				session.setAttribute("gio", ghbo);
	 			response.sendRedirect("htgioController");
			} catch(Exception e) {
				response.sendRedirect("htgioController");
			}
		}
		
		// TRẢ TOÀN BỘ
		if(traAll!=null) {
			session.removeAttribute("gio");
			response.sendRedirect("htgioController");
		}

		
		
// 		String sl = request.getParameter("txtsl");
// 		String ms = request.getParameter("ms");
// 		// Lay ma hang ra tu gio
// 		giohangbo gh = (giohangbo) session.getAttribute("gio");
// 		// Thay doi: sua hoac xoa tren bien
// 		if(request.getParameter("butsua")!=null) {
// 			long soluong = Long.parseLong(sl);
// 			gh.Them("", ms, "", soluong, 0);
// 		} else {
// 			gh.xoa(ms);
// 		}
// 		// Luu bien vao session
// 		session.setAttribute("gio", gh);
// 		if(gh.ds.size()==0)
// 			response.sendRedirect("htsach.jsp");
// 		else
// 			response.sendRedirect("htgio.jsp");
	%>
</body>
</html>