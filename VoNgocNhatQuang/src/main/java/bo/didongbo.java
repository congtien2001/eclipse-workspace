package bo;

import java.util.ArrayList;

import bean.didongbean;
import dao.didongdao;


public class didongbo {

	didongdao dddao = new didongdao();
	ArrayList<didongbean> ds;
	
	public ArrayList<didongbean> getDiDong() {
		ds = dddao.getDiDong();
		return ds;
	}
	
	
	
	public ArrayList<didongbean> Tim(String key){
   	 	ArrayList<didongbean> temp = new ArrayList<didongbean>();
   	 	ArrayList<didongbean> ds = getDiDong();
   	 	
   	 	
   	 	
   	 	for(didongbean d: ds) {
			if(d.tendidong.toLowerCase().trim().contains(key.toLowerCase().trim())) 
   	 			temp.add(d);
		}
   	 	return temp;
    }
	
	
	
}
