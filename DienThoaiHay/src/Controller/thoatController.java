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
import dao.giohangdao;

/**
 * Servlet implementation class thoatController
 */
@WebServlet("/thoatController")
public class thoatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thoatController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		RequestDispatcher rd;
		
		giohangbo ghbo = (giohangbo)session.getAttribute("gio");
		
		var MaKH = session.getAttribute("makh");
		
		if(ghbo!=null && MaKH!=null) {
			giohangdao ghdao = new giohangdao();
			int makh = (int) session.getAttribute("makh");
			ghdao.ThemHoaDon(makh);
			for(giohangbean item : ghbo.ds) {
				ghdao.ThemCTHD(makh, item.getMaDiDong(), item.getSoLuong());
			}
		}
		
		session.removeAttribute("dn");
		session.removeAttribute("gio");
		session.removeAttribute("makh");
		rd = request.getRequestDispatcher("ktdnController");
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