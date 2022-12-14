package bo;

import java.util.ArrayList;

import bean.khachhangbean;
import dao.dangnhapdao;

public class khachhangbo {
	dangnhapdao dndao = new dangnhapdao();
	ArrayList<khachhangbean> ds;
	
	public ArrayList<khachhangbean> getTaiKhoan() {
		ds = dndao.getTaiKhoan(); // sai thang dao lay ve
		return ds;
	}
}