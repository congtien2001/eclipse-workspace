package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
	loaidao ldao = new loaidao();
	ArrayList<loaibean> ds;
	
	public ArrayList<loaibean> getLoai() {
		ds = ldao.getLoai(); // sai thang dao lay ve
		return ds;
	}
}