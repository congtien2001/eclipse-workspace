package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.xacnhanbo;

/**
 * Servlet implementation class xacnhanchitietController
 */
@WebServlet("/xacnhanchitietController")
public class xacnhanchitietController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanchitietController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int mhd = Integer.parseInt(request.getParameter("mhd"));
		int mct = Integer.parseInt(request.getParameter("mct"));
		
		xacnhanbo xnbo = new xacnhanbo();
		xnbo.XNChuyenTien(mct, mhd);
		
		RequestDispatcher rd = request.getRequestDispatcher("xacnhanController");
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