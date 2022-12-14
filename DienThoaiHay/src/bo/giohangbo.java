package bo;

import java.util.ArrayList;
import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();

	public void Them(String anh, String masach, String tensach, long soluong, long gia)	{	   
		for(giohangbean s: ds)
			if(s.getMasach().equals(masach)) {
				s.setSoluong(s.getSoluong()+soluong);
				return;
			}
		ds.add(new giohangbean(anh, masach, tensach, soluong, gia));
	}
	
	public long Tongtien() {
		long ss=0;
		for(giohangbean s: ds) {
			ss = ss + s.getThanhtien();
		}
		return ss;
	}
	
	public void Xoa(String maSach) {
		int length = ds.size();
		for(int i=length-1; i>=0; i--) {
			if(ds.get(i).getMasach().equals(maSach)) {
				ds.remove(i);
			}
		}
	}

	
	
	
}