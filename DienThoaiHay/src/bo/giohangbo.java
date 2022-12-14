package bo;

import java.util.ArrayList;
import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();

	public void Them(String Anh, String MaDiDong, String TenDiDong, long SoLuong, long Gia)	{	   
		for(giohangbean s: ds)
			if(s.getMaDiDong().endsWith(MaDiDong)) {
				s.setSoLuong(s.getSoLuong()+SoLuong);
				return;
			}
		ds.add(new giohangbean(Anh, MaDiDong, TenDiDong, SoLuong, Gia, Gia));
	}
	
	public long Tongtien() {
		long ss=0;
		for(giohangbean s: ds) {
			ss = ss + s.getThanhTien();
		}
		return ss;
	}
	
	public void Xoa(String MaDiDong) {
		int length = ds.size();
		for(int i=length-1; i>=0; i--) {
			if(ds.get(i).getMaDiDong().equals(MaDiDong)) {
				ds.remove(i);
			}
		}
	}

	
	
	
}