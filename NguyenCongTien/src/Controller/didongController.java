package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.didongbean;

import bo.didongbo;


/**
 * Servlet implementation class didongController
 */
@WebServlet("/didongController")
public class didongController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public didongController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		didongbo lbo=new didongbo();
		ArrayList<didongbean> dsloai=lbo.getdidong();
		request.setAttribute("dsloai", dsloai);
		
		didongbo ddbo=new didongbo();
		ArrayList<didongbean> dsdidong=ddbo.getdidong();
//		String key=request.getParameter("txttk");

//			if(key!=null)
//				dsdidong=sdao.Tim(key);
		
		request.setAttribute("didong", dsdidong );
				
		RequestDispatcher rd=request.getRequestDispatcher("htdidong.jsp"); // điều hướng
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