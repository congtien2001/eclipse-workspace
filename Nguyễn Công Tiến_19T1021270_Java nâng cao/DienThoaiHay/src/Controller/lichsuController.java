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

import bean.lichsubean;
import bean.loaibean;
import bo.lichsubo;
import bo.loaibo;
import dao.lsmuadao;

/**
 * Servlet implementation class lichsuController
 */
@WebServlet("/lichsuController")
public class lichsuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsuController() {
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
			
			int makh = (int) session.getAttribute("makh");
			
			lichsubo lsbo = new lichsubo();
			ArrayList<lichsubean> ls = lsbo.getLichSu(makh);
			session.setAttribute("ls", ls);
			
			rd = request.getRequestDispatcher("lichsu.jsp");
			rd.forward(request, response);
		}
		else {
			rd = request.getRequestDispatcher("ktdnController");
		 	rd.forward(request, response);
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