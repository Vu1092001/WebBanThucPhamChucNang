package iuh.fit.entity;

public class NhaCungCap {
	private int maNhaCungCap;
	private String tenNhaCungCap;
	private String noiSanXuat;
	public NhaCungCap() {
		super();
	}
	public NhaCungCap(int maNhaCungCap) {
		super();
		this.maNhaCungCap = maNhaCungCap;
	}
	public NhaCungCap(int maNhaCungCap, String tenNhaCungCap, String noiSanXuat) {
		super();
		this.maNhaCungCap = maNhaCungCap;
		this.tenNhaCungCap = tenNhaCungCap;
		this.noiSanXuat = noiSanXuat;
	}
	public int getMaNhaCungCap() {
		return maNhaCungCap;
	}
	public void setMaNhaCungCap(int maNhaCungCap) {
		this.maNhaCungCap = maNhaCungCap;
	}
	public String getTenNhaCungCap() {
		return tenNhaCungCap;
	}
	public void setTenNhaCungCap(String tenNhaCungCap) {
		this.tenNhaCungCap = tenNhaCungCap;
	}
	public String getNoiSanXuat() {
		return noiSanXuat;
	}
	public void setNoiSanXuat(String noiSanXuat) {
		this.noiSanXuat = noiSanXuat;
	}
	@Override
	public String toString() {
		return "NhaCungCap [maNhaCungCap=" + maNhaCungCap + ", tenNhaCungCap=" + tenNhaCungCap + ", noiSanXuat="
				+ noiSanXuat + "]";
	}
	
}
