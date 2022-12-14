package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.loaibean;
import bean.didongbean;
import bo.didongbo;
import bo.loaibo;
import bo.didongbo;

/**
 * Servlet implementation class hienthididongController
 */
@WebServlet("/hienthididongController")
public class hienthididongController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hienthididongController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		loaibo lbo=new loaibo();
		ArrayList<loaibean> dsloai=lbo.getloai();
		request.setAttribute("dsloai", dsloai);
		
		didongbo sbo=new didongbo();
		ArrayList<didongbean> dssach=sbo.getdidong();
		//tim kiem
		  String maloai=request.getParameter("ml"); String
		  key=request.getParameter("txttk"); if(maloai!=null)
		  dssach=sbo.TimMa(maloai); else if(key!=null) dssach=sbo.Tim(key);
		 
		  request.setAttribute("dssach", dssach);
		 

		rd = request.getRequestDispatcher("hienthididong.jsp");
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
