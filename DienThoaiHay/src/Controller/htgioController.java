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

/**
 * Servlet implementation class htgioController
 */
@WebServlet("/htgioController")
public class htgioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htgioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		loaibo lbo=new loaibo();
		ArrayList<loaibean> dsloai = lbo.getLoai();
		request.setAttribute("dsloai", lbo);
		
		HttpSession session = request.getSession();
		ArrayList<giohangbean> ghcsdl = (ArrayList<giohangbean>) session.getAttribute("gioCSDL");
  	 	giohangbo ghbo = (giohangbo)session.getAttribute("gio");
  	 	if(ghcsdl!=null) {
  	 		giohangbo gh;
  		 	if(session.getAttribute("gio")==null){//Mua lan dau
  			 	gh= new giohangbo();
  		 		session.setAttribute("gio", gh);
  		 	}
  		 	else {
  		 		for(giohangbean item: ghcsdl) {
  	  	 			ghbo.Them(item.getAnh(), item.getMasach(), item.getTensach(), item.getSoluong(), item.getGia());
  	  	 		}
  	  	 		session.removeAttribute("gioCSDL");
  	  	 		session.setAttribute("gio", ghbo);
  		 	}
  	 	}
  	 	
		
		RequestDispatcher rd = request.getRequestDispatcher("htgio.jsp");
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