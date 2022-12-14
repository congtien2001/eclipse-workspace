package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
   public ArrayList<giohangbean> ds= new ArrayList<giohangbean>();
   
   public void Them(String masach, String tensach, long soluong, long gia)	{	   
	   for(giohangbean s: ds)
		   if(s.getMasach().equals(masach)) {
			   	s.setSoluong(s.getSoluong()+soluong);
				return;
		   }
		   ds.add(new giohangbean(masach, tensach, soluong, gia));
	   }
	
	public long TongTien(String masach, String tensach, long soluong, long gia) {
		long ss=0;
		for(giohangbean s: ds)
			ss=ss+s.getThanhtien();
		return ss;
	}
	
	public void xoa(String masach) {
		for(giohangbean g:ds) {
			if(g.getMasach().equals(masach)) {
				ds.remove(g); break;
			}
		}
	}

}
