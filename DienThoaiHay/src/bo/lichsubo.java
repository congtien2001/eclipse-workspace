package bo;

import java.util.ArrayList;

import bean.lichsubean;
import dao.lsmuadao;

public class lichsubo {
	lsmuadao lsdao = new lsmuadao();
	
	public ArrayList<lichsubean> getLichSu(int MaKH) {
		return lsdao.getLichSu(MaKH);
	}
}