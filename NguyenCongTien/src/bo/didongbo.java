package bo;

import java.util.ArrayList;

import bean.didongbean;

import dao.didongdao;

public class didongbo {
	didongdao ddong=new didongdao();
	ArrayList<didongbean> ds;
	public ArrayList<didongbean> getdidong(){
		ds=ddong.getdidong();
		return ds;
	}
//public ArrayList<didongbean> Tim(String key){
//	  	 ArrayList<didongbean> tam= new ArrayList<didongbean>();
//	  	 ArrayList<didongbean> ds= getdidong();
//	  	 for(didongbean s: ds)
//		   	if(s.getMadidong().toLowerCase().trim().contains(
//		   			key.toLowerCase().trim()))
//		   
//		   		
//		   		
//		   			
//		   			tam.add(s);
//		 return tam;
//	}	
}
