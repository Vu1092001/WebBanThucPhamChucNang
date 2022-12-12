package iuh.fit.entity;

public class ChiTietDonHang {

	private int Ma_CTDH;
	private SanPham Ma_SP;
	private DonHang Ma_Don_Hang;
	public ChiTietDonHang() {
		super();
	}
	public ChiTietDonHang(int ma_CTDH) {
		super();
		Ma_CTDH = ma_CTDH;
	}
	public ChiTietDonHang(SanPham ma_SP, DonHang ma_Don_Hang) {
		super();
		Ma_SP = ma_SP;
		Ma_Don_Hang = ma_Don_Hang;
	}
	public ChiTietDonHang(int ma_CTDH, SanPham ma_SP, DonHang ma_Don_Hang) {
		super();
		Ma_CTDH = ma_CTDH;
		Ma_SP = ma_SP;
		Ma_Don_Hang = ma_Don_Hang;
	}
	public int getMa_CTDH() {
		return Ma_CTDH;
	}
	public void setMa_CTDH(int ma_CTDH) {
		Ma_CTDH = ma_CTDH;
	}
	public SanPham getMa_SP() {
		return Ma_SP;
	}
	public void setMa_SP(SanPham ma_SP) {
		Ma_SP = ma_SP;
	}
	public DonHang getMa_Don_Hang() {
		return Ma_Don_Hang;
	}
	public void setMa_Don_Hang(DonHang ma_Don_Hang) {
		Ma_Don_Hang = ma_Don_Hang;
	}
	@Override
	public String toString() {
		return "ChiTietDonHang [Ma_CTDH=" + Ma_CTDH + ", Ma_SP=" + Ma_SP + ", Ma_Don_Hang=" + Ma_Don_Hang + "]";
	}
	
}
