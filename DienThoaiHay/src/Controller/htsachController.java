package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bean.loaibean;
import bean.didongbean;
import bo.giohangbo;
import bo.loaibo;
import bo.didongbo;

/**
 * Servlet implementation class htsachController
 */
@WebServlet("/htsachController")
public class htsachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htsachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
  	 	response.setCharacterEncoding("utf-8");
		
		loaibo lbo = new loaibo();
		ArrayList<loaibean>  dsloai = lbo.getLoai();
		request.setAttribute("dsloai", dsloai);
		
		
		didongbo sdao= new didongbo();
	 	ArrayList<didongbean> dssach= sdao.getSach();
	 	String ml=request.getParameter("ml");
	 	String key=request.getParameter("txttk");
	 	if(ml!=null)
	 		dssach = sdao.TimMa(ml);
	 	else {
	 		if(key!=null)
	 			dssach = sdao.Tim(key);
	 	}
	 	
	 	HttpSession session = request.getSession();
	 	// Nhập giỏ hàng lưu trong CSDL với session gio
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
  	  	 			ghbo.Them(item.getAnh(), item.getMaDiDong(), item.getTenDiDong(), item.getSoLuong(), item.getGia());
  	  	 		}
  	  	 		session.removeAttribute("gioCSDL");
  	  	 		session.setAttribute("gio", ghbo);
  		 	}
  	 	}
	 	
//	 	giohangbo ghCSDL = (giohangbo) request.getAttribute("gioCSDL");
//	 	session.setAttribute("gioCSDL", ghCSDL);
//	 	giohangbo gh = (giohangbo) request.getAttribute("gio");
//	 	session.setAttribute("gio", gh);
	 	
	 	
	 	request.setAttribute("dssach", dssach);
	 	RequestDispatcher rd = request.getRequestDispatcher("htsach.jsp");
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