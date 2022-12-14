package Controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.didongbean;
import bo.loaibo;
import dao.didongdao;

/**
 * Servlet implementation class themsachController
 */
@WebServlet("/themsachController")
public class themsachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themsachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
  	 	response.setCharacterEncoding("utf-8");
		
		// Xử lý chạy lần đầu
		if(request.getContentLength()<=0) {
			HttpSession session = request.getSession();
			loaibo lbo = new loaibo();
			session.setAttribute("dsloai", lbo.getLoai());
			RequestDispatcher rd = request.getRequestDispatcher("themsachadmin.jsp");
			rd.forward(request, response);
		}
		
		// THÊM SÁCH
		else {
			DiskFileItemFactory factory = new DiskFileItemFactory();
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
			String dirUrl1 = request.getServletContext().getRealPath("") +  File.separator + "image_didong";
//			response.getWriter().println(dirUrl1);
			
			String MaDiDong = "";
		    String TenDiDong = "";
		    Long Gia = (long) 1;
		    Long SoLuong = (long) 2;
		    String Anh = "";
		    String MaLoai = "";
		    String sotap = "";
		    		 
			try {
				List<FileItem> fileItems = upload.parseRequest(request);//Lấy về các đối tượng gửi lên
				//duyệt qua các đối tượng gửi lên từ client gồm file và các control
				for (FileItem fileItem : fileItems) {
					if (!fileItem.isFormField()) {//Nếu ko phải các control=>upfile lên
						Anh = fileItem.getName();
						// xử lý file
						String nameimg = fileItem.getName();
						if (!nameimg.equals("")) {
					        //Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
							String dirUrl = request.getServletContext().getRealPath("") +  File.separator + "image_didong";
							File dir = new File(dirUrl);
							if (!dir.exists()) {//nếu ko có thư mục thì tạo ra
								dir.mkdir();
							}
					    	String fileImg = dirUrl + File.separator + nameimg;
					        File file = new File(fileImg);//tạo file
					        try {
					        	fileItem.write(file);//lưu file
					            System.out.println("UPLOAD THÀNH CÔNG...!");
					            System.out.println("Đường dẫn lưu file là: "+dirUrl);
					        } catch (Exception e) {
					        	e.printStackTrace();
					        }
						}
					}
					else { //Neu la control 
						String control = fileItem.getFieldName();
						if(control.equals("ms")) {
							MaDiDong = fileItem.getString();
						}
						if(control.equals("tensach")) {
							TenDiDong = fileItem.getString();
						}
						if(control.equals("sl")) {
							SoLuong = Long.parseLong(fileItem.getString());
						}
						if(control.equals("gia")) {
							Gia = Long.parseLong(fileItem.getString());
						}
						if(control.equals("ml")) {
							MaLoai = fileItem.getString();
						}
						if(control.equals("sotap")) {
							sotap = fileItem.getString();
						}
						/*
						 * if(control.equals("tg")) { tacgia = fileItem.getString(); }
						 */
					}
				}
				
				//didongbean s = new didongbean(MaDiDong, TenDiDong, SoLuong, Gia,  "image_didong/" + Anh, MaLoai);
				didongbean s = new didongbean(MaDiDong, TenDiDong, SoLuong, Gia, MaLoai, "image_didong/"+Anh);
				didongdao sdao = new didongdao();
				sdao.Them(s, sotap);
				
				response.sendRedirect("sachadminController");
				
			
			} catch (FileUploadException e) {
				e.printStackTrace();
			}
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