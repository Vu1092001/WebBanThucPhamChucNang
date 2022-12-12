package iuh.fit.entity;

public class SanPham {
	private int maSp;
	private String tenSp;
	private double giaSp;
	private String imageSp;
	private int luotMua;
	private NhaCungCap nhaCungCap;
	private String loaiSanPham;
	private String doiTuongSuDung;
	private String loiIch;
	private String moTa;
		
	public SanPham() {
		super();
	}

	public SanPham(int maSp) {
		super();
		this.maSp = maSp;
	}
	
	
	
	public SanPham(String tenSp, double giaSp, String imageSp, int luotMua, NhaCungCap nhaCungCap, String loaiSanPham,
			String doiTuongSuDung, String loiIch, String moTa) {
		super();
		this.tenSp = tenSp;
		this.giaSp = giaSp;
		this.imageSp = imageSp;
		this.luotMua = luotMua;
		this.nhaCungCap = nhaCungCap;
		this.loaiSanPham = loaiSanPham;
		this.doiTuongSuDung = doiTuongSuDung;
		this.loiIch = loiIch;
		this.moTa = moTa;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public SanPham(int maSp, String tenSp, double giaSp, String imageSp, int luotMua, NhaCungCap nhaCungCap,
			String loaiSanPham, String doiTuongSuDung, String loiIch, String moTa) {
		super();
		this.maSp = maSp;
		this.tenSp = tenSp;
		this.giaSp = giaSp;
		this.imageSp = imageSp;
		this.luotMua = luotMua;
		this.nhaCungCap = nhaCungCap;
		this.loaiSanPham = loaiSanPham;
		this.doiTuongSuDung = doiTuongSuDung;
		this.loiIch = loiIch;
		this.moTa = moTa;
	}

	public int getMaSp() {
		return maSp;
	}

	public void setMaSp(int maSp) {
		this.maSp = maSp;
	}

	public String getTenSp() {
		return tenSp;
	}

	public void setTenSp(String tenSp) {
		this.tenSp = tenSp;
	}

	public double getGiaSp() {
		return giaSp;
	}

	public void setGiaSp(double giaSp) {
		this.giaSp = giaSp;
	}

	public String getImageSp() {
		return imageSp;
	}

	public void setImageSp(String imageSp) {
		this.imageSp = imageSp;
	}

	public int getLuotMua() {
		return luotMua;
	}

	public void setLuotMua(int luotMua) {
		this.luotMua = luotMua;
	}

	public NhaCungCap getNhaCungCap() {
		return nhaCungCap;
	}

	public void setNhaCungCap(NhaCungCap nhaCungCap) {
		this.nhaCungCap = nhaCungCap;
	}

	public String getLoaiSanPham() {
		return loaiSanPham;
	}

	public void setLoaiSanPham(String loaiSanPham) {
		this.loaiSanPham = loaiSanPham;
	}

	public String getDoiTuongSuDung() {
		return doiTuongSuDung;
	}

	public void setDoiTuongSuDung(String doiTuongSuDung) {
		this.doiTuongSuDung = doiTuongSuDung;
	}

	public String getLoiIch() {
		return loiIch;
	}

	public void setLoiIch(String loiIch) {
		this.loiIch = loiIch;
	}

	@Override
	public String toString() {
		return "SanPham [maSp=" + maSp + ", tenSp=" + tenSp + ", giaSp=" + giaSp + ", imageSp=" + imageSp + ", luotMua="
				+ luotMua + ", nhaCungCap=" + nhaCungCap + ", loaiSanPham=" + loaiSanPham + ", doiTuongSuDung="
				+ doiTuongSuDung + ", loiIch=" + loiIch + ", moTa=" + moTa + "]";
	}

	

	
	
	
	
	
	
}
