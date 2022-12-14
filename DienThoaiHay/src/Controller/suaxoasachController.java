package Controller;

import java.io.IOException;
import java.lang.ref.ReferenceQueue;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.dangnhapadminbean;
import bean.didongbean;
import bo.didongbo;
import dao.didongdao;

/**
 * Servlet implementation class suaxoasachController
 */
@WebServlet("/suaxoasachController")
public class suaxoasachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suaxoasachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
  	 	response.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("admin")!=null) {
			// XÓA
			if(request.getParameter("xoa")!=null) {
				String ms = request.getParameter("ms");
				didongdao sdao = new didongdao();
				sdao.Xoa(ms);
				response.sendRedirect("sachadminController");
			}
			// CHUYỂN QUA TRANG SỬA
			else if(request.getParameter("sua")!=null) {
				String masach = request.getParameter("ms");
				String tensach = request.getParameter("ten");
			    String tacgia = request.getParameter("tg");
			    Long gia = Long.parseLong(request.getParameter("gia"));
			    Long soluong = Long.parseLong(request.getParameter("sl"));
			    String maloai = request.getParameter("ml");
			    
			    didongbean s = new didongbean(masach, tensach, tacgia, gia, soluong, "", maloai);
			    session.setAttribute("s", s);
			    
				response.sendRedirect("suasachController");
			}
			
			// LƯU THÔNG TIN ĐÃ SỬA
			else if(request.getParameter("luu")!=null) {
				String masach = request.getParameter("ms");
				String tensach = request.getParameter("ten");
			    String tacgia = request.getParameter("tg");
			    Long gia = Long.parseLong(request.getParameter("gia"));
			    Long soluong = Long.parseLong(request.getParameter("sl"));
			    String maloai = request.getParameter("ml");
			    
			    didongbean s = new didongbean(masach, tensach, tacgia, gia, soluong, "", maloai);
			    
			    didongdao sdao = new didongdao();
			    sdao.Sua(s);
			    session.removeAttribute("s");
			    response.sendRedirect("sachadminController");
			}
			
			
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