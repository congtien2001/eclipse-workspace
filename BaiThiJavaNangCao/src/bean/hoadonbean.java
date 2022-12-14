package bean;

import java.sql.Date;

public class hoadonbean {
	private int MaHoaDon;
	private int makh;
	private Date NgayMua;
	private Boolean damua;
	
	public hoadonbean(int maHoaDon, int makh, Date ngayMua, Boolean damua) {
		super();
		MaHoaDon = maHoaDon;
		this.makh = makh;
		NgayMua = ngayMua;
		this.damua = damua;
	}
	public hoadonbean() {
		super();
	}
	public int getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	public int getMakh() {
		return makh;
	}
	public void setMakh(int makh) {
		this.makh = makh;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		NgayMua = ngayMua;
	}
	public Boolean getDamua() {
		return damua;
	}
	public void setDamua(Boolean damua) {
		this.damua = damua;
	}
	@Override
	public String toString() {
		return "hoadonbean [MaHoaDon=" + MaHoaDon + ", makh=" + makh + ", NgayMua=" + NgayMua + ", damua=" + damua
				+ "]";
	}
	
}