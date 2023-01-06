package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bean.loaibean;
import bo.giohangbo;
import bo.loaibo;
import dao.thanhtoandao;

/**
 * Servlet implementation class thanhtoanController
 */
@WebServlet("/thanhtoanController")
public class thanhtoanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thanhtoanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		RequestDispatcher rd;
		
		var MaKH = session.getAttribute("makh");
		
		if(MaKH!=null) {
			int makh = (Integer) session.getAttribute("makh");
			
			giohangbo ghbo = (giohangbo)session.getAttribute("gio");
			thanhtoandao ttdao = new thanhtoandao();
			String thanhtoan = request.getParameter("thanhtoan");
			
			
			
			if(thanhtoan!=null) {
				if(ghbo!=null) {
					ttdao.ThemHoaDon(makh);
					for(giohangbean item : ghbo.ds) {
						ttdao.ThemChiTietHoaDon(makh, item.getMaDiDong(), item.getSoLuong());
					}
					session.setAttribute("damuahang", ghbo);
					session.removeAttribute("gio");
					rd = request.getRequestDispatcher("thanhtoan.jsp");
					rd.forward(request, response);
				}
				else {
					rd = request.getRequestDispatcher("thanhtoan.jsp");
					rd.forward(request, response);
				}
			}
		}
		else {
			rd = request.getRequestDispatcher("ktdnController");
		 	rd.forward(request, response);
		}
		
		
		
		rd = request.getRequestDispatcher("thanhtoan.jsp");
	 	rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}