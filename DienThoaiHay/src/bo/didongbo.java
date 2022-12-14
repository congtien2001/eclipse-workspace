package bo;

import java.util.ArrayList;

import bean.didongbean;
import dao.didongdao;

public class didongbo {
	didongdao sdao = new didongdao();
	ArrayList<didongbean> ds;
	
	public ArrayList<didongbean> getSach() {
		ds = sdao.getSach();
		return ds;
	}
	
	public ArrayList<didongbean> TimMa(String ma){
	   	ArrayList<didongbean> tam= new ArrayList<didongbean>();
//	   	ArrayList<sachbean> ds= getSach();
	   	for(didongbean s: ds)
	   		if(s.getMaLoai().equals(ma))
	   			tam.add(s);
	   	return tam;
    }
	
	public ArrayList<didongbean> Tim(String key){
   	 	ArrayList<didongbean> tam= new ArrayList<didongbean>();
//   	 	ArrayList<sachbean> ds= getSach();
   	 	for(didongbean s: ds)
   	 		if(s.getTenDiDong().toLowerCase().trim().contains(key.toLowerCase().trim()) || s.getMaDiDong().toLowerCase().trim().contains(key.toLowerCase().trim())||s.getMaDiDong().toLowerCase().trim().contains(key.toLowerCase().trim()))
   	 			tam.add(s);
   	 	return tam;
    }
}