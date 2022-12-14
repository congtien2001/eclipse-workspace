package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.dangkydao;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class dangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hoten = request.getParameter("txthoten");
		String diachi = request.getParameter("txtdiachi");
		String sodt = request.getParameter("txtsodt");
		String email = request.getParameter("txtemail");
		String tendn = request.getParameter("txtun");
		String pass = request.getParameter("txtpass");
		RequestDispatcher rd;
		
		if(hoten!=null && diachi!=null && tendn!=null && pass!=null) {
			dangkydao dkdao = new dangkydao();
			dkdao.Dangky(hoten, diachi, sodt, email, tendn, pass);
			rd = request.getRequestDispatcher("dangky.jsp");
		} 
		else {
			rd = request.getRequestDispatcher("dangky.jsp");
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