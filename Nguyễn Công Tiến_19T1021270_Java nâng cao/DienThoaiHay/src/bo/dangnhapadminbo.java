package bo;

import bean.dangnhapadminbean;
import dao.dangnhapadmindao;

public class dangnhapadminbo {
	dangnhapadmindao dnAdmin = new dangnhapadmindao();
	
	public dangnhapadminbean ktdn(String tendn, String mk) {
		return dnAdmin.ktdn(tendn, mk);
	}
}