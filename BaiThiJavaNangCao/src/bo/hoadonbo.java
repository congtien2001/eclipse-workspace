package bo;

import bean.hoadonbean;
import dao.hoadondao;

public class hoadonbo {
	hoadondao hddao= new hoadondao();
	   public int Them(long makh) {
		   return hddao.Them(makh);
	   }
	   public long maxhd() {
		   return hddao.maxhd();
	   }
	

}
