package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bo.giohangbo;

/**
 * Servlet implementation class suaxoaController
 */
@WebServlet("/suaxoaController")
public class suaxoaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suaxoaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String capnhat = request.getParameter("capnhat");
		String xoa = request.getParameter("xoa");
		String xoa1 = request.getParameter("xoa1");
		String traAll = request.getParameter("traAll");
		HttpSession session = request.getSession();
		
		try {
			// CẬP NHẬT
			if(capnhat!=null) {
				String[] ms = request.getParameterValues("ms");
				giohangbo ghbo = (giohangbo)session.getAttribute("gio");
				for(giohangbean list: ghbo.ds) {
					String sl = request.getParameter(list.getMaDiDong());
					if(sl!=null) {
						list.setSoLuong(Long.parseLong(sl));
					}
				}
				response.sendRedirect("htgioController");
			}
			
			// XÓA 1 SẢN PHẨM
			if(xoa1!=null) {
				String ms = request.getParameter("ms");
				giohangbo ghbo = (giohangbo)session.getAttribute("gio");
				for(giohangbean list: ghbo.ds) {
					if(ms.equals(list.getMaDiDong())) {
						ghbo.ds.remove(list);
					}
				}
				session.setAttribute("gio", ghbo);
				response.sendRedirect("htgioController");
			}
			
			// XÓA Ở CHEKBOX
			if(xoa!=null) {
				String[] dl = request.getParameterValues("check");
				giohangbo ghbo = (giohangbo)session.getAttribute("gio");
				for(String ms:dl) {
					ghbo.Xoa(ms);
				}
				session.setAttribute("gio", ghbo);
	 			response.sendRedirect("htgioController");
			}
			
			// TRẢ TOÀN BỘ
			if(traAll!=null) {
				session.removeAttribute("gio");
				response.sendRedirect("htgioController");
			}
			
		} catch(Exception e) {
			response.sendRedirect("htgioController");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}