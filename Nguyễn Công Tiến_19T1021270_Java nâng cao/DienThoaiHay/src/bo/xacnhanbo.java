package bo;

import java.util.ArrayList;

import bean.xacnhanbean;
import dao.xacnhandao;

public class xacnhanbo {
	xacnhandao xndao = new xacnhandao();
	
	public ArrayList<xacnhanbean> getxacnhan() {
		return xndao.getxacnhan();
	}
	
	public void XNChuyenTien(int macthd, int mahd) {
		xndao.XNChuyenTien(macthd, mahd);
	}
}