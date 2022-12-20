package bean;

public class dangnhapbean {
	private String TenDN;
	private String Pass;
	public dangnhapbean() {
		super();
	}
	public dangnhapbean(String tenDN, String pass) {
		super();
		TenDN = tenDN;
		Pass = pass;
	}
	public String getTenDN() {
		return TenDN;
	}
	public void setTenDN(String tenDN) {
		TenDN = tenDN;
	}
	public String getPass() {
		return Pass;
	}
	public void setPass(String pass) {
		Pass = pass;
	}
	
	
}
