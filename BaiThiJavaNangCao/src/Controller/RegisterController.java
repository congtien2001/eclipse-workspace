package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Registerdao;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String HoTen = request.getParameter("txthoten");
		String DiaChi = request.getParameter("txtdiachi");
		String SoDT = request.getParameter("txtsodt");
		String Email = request.getParameter("txtemail");
		String TenDN = request.getParameter("txttendn");
		String Pass = request.getParameter("txtpass");
		
		RequestDispatcher rd;
		
		if(HoTen != null || DiaChi != null || TenDN !=null || Pass !=null) {
			Registerdao dkdao = new Registerdao();
			dkdao.Dangky(HoTen, DiaChi, SoDT, Email, TenDN, Pass);
			rd = request.getRequestDispatcher("LoginController");
		}
		else {
			rd = request.getRequestDispatcher("Register.jsp");
		}
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
