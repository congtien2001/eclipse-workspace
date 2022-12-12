package bo;

import java.util.ArrayList;

import bean.didongbean;
import dao.didongdao;

public class didongbo {
	didongbo sdao=new didongbo();
	ArrayList<didongbean> ds;
	public ArrayList<didongbean> getdidong(){
		ds=sdao.getdidong();
		return ds;
	}
public ArrayList<didongbean> TimMa(String ma){
  	 ArrayList<didongbean> tam= new ArrayList<didongbean>();
  	// ArrayList<sachbean> ds= getsach();
  	 for(didongbean s: ds)
  		 if(s.getMaLoai().equals(ma))
  			 tam.add(s);
	 return tam;
}

public ArrayList<didongbean> Tim(String key){
  	 ArrayList<didongbean> tam= new ArrayList<didongbean>();
  	// ArrayList<sachbean> ds= getsach();
  	 for(didongbean s: ds)
	   	if(s.getTenDiDONG().toLowerCase().trim().contains(
	   			key.toLowerCase().trim()) ||
	   	   s.getGia().toLowerCase().trim().contains(
	   	    	key.toLowerCase().trim())||
	   	   s.getMaLoai().toLowerCase().trim().contains(
	      		key.toLowerCase().trim())
	   	   )
	   			
	   			tam.add(s);
	 return tam;
}
}