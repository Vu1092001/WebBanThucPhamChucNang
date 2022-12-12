package iuh.fit.entity;

public class NguoiDung {
	private int maNd; 
	private String tenTaiKhoan;
	private String matKhau;
	private String loaiTaiKhoan;
	private String email;
	public NguoiDung() {
		super();
	}
	public NguoiDung(int maNd) {
		super();
		this.maNd = maNd;
	}
	public NguoiDung(int maNd, String tenTaiKhoan, String matKhau, String loaiTaiKhoan, String email) {
		super();
		this.maNd = maNd;
		this.loaiTaiKhoan = loaiTaiKhoan;
		this.tenTaiKhoan = tenTaiKhoan;
		this.matKhau = matKhau;
		this.email = email;
	}
	
	public NguoiDung(String tenTaiKhoan, String matKhau, String loaiTaiKhoan, String email) {
		super();
		this.tenTaiKhoan = tenTaiKhoan;
		this.matKhau = matKhau;
		this.loaiTaiKhoan = loaiTaiKhoan;
		this.email = email;
	}
	public int getMaNd() {
		return maNd;
	}
	public void setMaNd(int maNd) {
		this.maNd = maNd;
	}
	public String getLoaiTaiKhoan() {
		return loaiTaiKhoan;
	}
	public void setLoaiTaiKhoan(String loaiTaiKhoan) {
		this.loaiTaiKhoan = loaiTaiKhoan;
	}
	public String getTenTaiKhoan() {
		return tenTaiKhoan;
	}
	public void setTenTaiKhoan(String tenTaiKhoan) {
		this.tenTaiKhoan = tenTaiKhoan;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "NguoiDung [maNd=" + maNd + ", loaiTaiKhoan=" + loaiTaiKhoan + ", tenTaiKhoan=" + tenTaiKhoan
				+ ", matKhau=" + matKhau + ", email=" + email + "]";
	}
	
}
