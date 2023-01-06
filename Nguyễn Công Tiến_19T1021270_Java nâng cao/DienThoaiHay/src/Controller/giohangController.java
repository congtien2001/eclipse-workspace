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
import bo.giohangbo;
import bo.loaibo;

/**
 * Servlet implementation class giohangController
 */
@WebServlet("/giohangController")
public class giohangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String anh=request.getParameter("anh");
	  	String masach=request.getParameter("ms");
	 	String tensach=request.getParameter("ts");
	 	long gia=Long.parseLong(request.getParameter("gia"));
	 	long soluong=1;
	 	giohangbo gh;
	 	HttpSession session = request.getSession();
	 	if(session.getAttribute("gio")==null){//Mua lan dau
		 	gh= new giohangbo();
	 		session.setAttribute("gio", gh);
	 	}
	 	
	 	//b1: Lay session luu vao bien
	 	gh=(giohangbo)session.getAttribute("gio");
	 	//b2: Thao tac tren bien
	 	gh.Them(anh, masach, tensach, soluong, gia);
	 	//b3: luu bien vao session
	 	session.setAttribute("gio",gh);
	 	//Hien thi thi gio hang
	 	response.sendRedirect("htsachController");
	 	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}