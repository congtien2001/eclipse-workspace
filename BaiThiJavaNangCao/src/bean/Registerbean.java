package bean;

public class Registerbean {
	private String HoTen;
	private String DiaChi;
	private String SoDT;
	private String Email;
	private String TenDN;
	private String Pass;
	public Registerbean() {
		super();
	}
	public Registerbean(String hoTen, String diaChi, String soDT, String email, String tenDN, String pass) {
		super();
		HoTen = hoTen;
		DiaChi = diaChi;
		SoDT = soDT;
		Email = email;
		TenDN = tenDN;
		Pass = pass;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getSoDT() {
		return SoDT;
	}
	public void setSoDT(String soDT) {
		SoDT = soDT;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
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
