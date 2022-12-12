package iuh.fit.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.DataSource;

import iuh.fit.Dao.DanhSachSanPhamDao;
import iuh.fit.Dao.DonHangDao;
import iuh.fit.Dao.NguoiDungDao;
import iuh.fit.Dao.NhaCungCapDao;
import iuh.fit.Dao.SanPhamDao;
import iuh.fit.Dao.ThongTinChiTietNguoiDungDao;
import iuh.fit.entity.ChiTietDonHang;
import iuh.fit.entity.DanhSachSanPham;
import iuh.fit.entity.DonHang;
import iuh.fit.entity.NguoiDung;
import iuh.fit.entity.NhaCungCap;
import iuh.fit.entity.SanPham;
import iuh.fit.entity.ThongTinChiTietNguoiDung;
//Đã fix
/**
 * Servlet implementation class SanPhamServlet
 */
@MultipartConfig
@WebServlet("/TrangChu_Servlet")
public class TrangChu_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/WedThucPhamChucNang-Servler-app")
	private DataSource dataSource;
	SanPhamDao sanPhamDao;
	NguoiDungDao nguoiDungDao;
	NguoiDung nguoiDungHienTai = null;
	DanhSachSanPhamDao danhSachSanPhamDao;
	ThongTinChiTietNguoiDungDao chiTietNguoiDungDao;
	NhaCungCapDao nhaCungCapDao;
	DonHangDao donHangDao;
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		try {
			sanPhamDao = new SanPhamDao(dataSource);
			nguoiDungDao = new NguoiDungDao(dataSource);
			danhSachSanPhamDao = new DanhSachSanPhamDao(dataSource);
			chiTietNguoiDungDao = new ThongTinChiTietNguoiDungDao(dataSource);
			nhaCungCapDao = new NhaCungCapDao(dataSource);
			donHangDao = new DonHangDao(dataSource);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String theCommand = request.getParameter("command");
		if(theCommand == null)
			theCommand = "TRANGCHU";
		switch (theCommand) {
		case "TRANGCHU": TrangChu(request, response);
			break;
		case "DANHMUCSP": DanhMucSanPham(request,response);
			break;
		case "CHITIEPSANPHAM": ChiTietSanPham(request,response);
			break;
		case "DANGNHAP": dangNhap(request,response);
			break;
		case "DANGKY": dangky(request,response);
			break;
		case "GIOHANG": formGioHang(request,response);
			break;
		case "THEMVAOYEUTHICH": formGioHang(request,response);
			break;
		case "THEMVAOGIOHANG": themGioHang(request,response);
			break;
		case "XOAGIOHANG": xoaGioHang(request,response);
			break;
		case "CAPNHATSOLUONGSANPHAM": CapNhatSoLuongSanPham(request,response);
			break;
		case "DATHANG": datHang(request,response);
			break;
		case "THANHTOAN": thanhToan(request,response);
			break;
		case "QLSANPHAM": qlSanPham(request,response);
			break;
		case "QLTAIKHOAN": qlTaiKhoan(request,response);
			break;
		case "LUUSANPHAM":luuSanPham(request,response);
			break;
		case "SUASANPHAM": suaSanPham(request,response);
			break;
		case "XOASANPHAM": xoaSanPham(request,response);
			break;
		case "THEMSANPHAM": formThemSanPham(request,response);
			break;
		case "FORMSUA": formSuaSanPham(request,response);
			break;
		case "LICHSUDONHANG": formLichSu(request,response);
			break;
		case "DANGXUAT": dangXuat(request,response);
			break;
		case "HOANTATTHONGTIN": formHoanTat(request,response);
			break;
		case "LUUTHONGTINCHITIET": LuuThongTinChiTietKH(request,response);
        	break;
		default:
			TrangChu(request, response);
		}
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String theCommand = request.getParameter("command");
		if(theCommand == null)
			theCommand = "TRANGCHU";
		switch (theCommand) {
		case "LUUSANPHAM":luuSanPham(request,response);
			break;
			default:
				TrangChu(request, response);
			}	
	}
	private void LuuThongTinChiTietKH(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
        String hoTen = request.getParameter("hoTen");
        String diaChi = request.getParameter("diaChi");
        String soDienThoai = request.getParameter("soDienThoai");
        ThongTinChiTietNguoiDung tt = new ThongTinChiTietNguoiDung(hoTen, diaChi, soDienThoai, nguoiDungHienTai);
        Boolean rs = chiTietNguoiDungDao.themThongTinNguoiDung(tt);
        TrangChu(request, response);
    }
	private void formHoanTat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		ThongTinChiTietNguoiDung thongTinChiTietNguoiDung = chiTietNguoiDungDao.tinThongTinNguoiDung(nguoiDungHienTai.getMaNd());
		if(thongTinChiTietNguoiDung == null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/HoanTatThongTin.jsp");
	        dispatcher.forward(request, response);			
		}else {
			TrangChu(request, response);		
		}			
	}
	private void dangXuat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		nguoiDungHienTai = null;
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Login.jsp");
        dispatcher.forward(request, response);
	}

	private void formLichSu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		List<DonHang> lsDonHang;
		if(nguoiDungHienTai.getLoaiTaiKhoan().equals("AD")) {
			lsDonHang = donHangDao.getAllDonHang();
		}else {
			lsDonHang = donHangDao.getAllDonHangTheoMaKh(nguoiDungHienTai.getMaNd());
		}
        request.setAttribute("LsDonHang", lsDonHang);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/LichSuDatHang.jsp");
        dispatcher.forward(request, response);	
	}
	private void formSuaSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		// TODO Auto-generated method stub
		int maSp = Integer.parseInt(request.getParameter("maSp"));
		SanPham sp = sanPhamDao.getOneSanPham(maSp);		
		List<NhaCungCap> lsNhaCungCaps = nhaCungCapDao.getAllNhaCungCap();
		request.setAttribute("lsNhaCungCap", lsNhaCungCaps);
		request.setAttribute("lsSanPham", sp);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/FormSuaSanPham.jsp");
		dispatcher.forward(request, response);		
	}

	private void formThemSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		// TODO Auto-generated method stub
		List<NhaCungCap> lsNhaCungCaps = nhaCungCapDao.getAllNhaCungCap();
		request.setAttribute("lsNhaCungCaps", lsNhaCungCaps);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/FormThemSp.jsp");
		dispatcher.forward(request, response);			
	}

	private void xoaSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		// TODO Auto-generated method stub
		int maSp = Integer.parseInt(request.getParameter("maSp"));
		sanPhamDao.xoaSanPham(maSp);
		qlSanPham(request, response);	
	}

	private void suaSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		// TODO Auto-generated method stub
		int maSp = Integer.parseInt(request.getParameter("maSp"));
		String tenSp = request.getParameter("tenSp");
		double giaSp = Double.parseDouble(request.getParameter("giaSanPham"));
		String imageSp = "hinhcanxi.jpg";
		int luotMua = 0;		
		NhaCungCap nhaCungCap = nhaCungCapDao.getAllNhaCungCapTheoTenNhaCungCap(request.getParameter("slNhaCungCap"));
		String loaiSanPham = request.getParameter("slLoaiSanPham");	
		String doiTuongSuDung = request.getParameter("doiTuongSuDung");
		String loiIch = request.getParameter("loiIch");
		String moTa = request.getParameter("moTaSanPham");	
		SanPham sp = new SanPham(maSp,tenSp, giaSp, imageSp, luotMua, nhaCungCap, loaiSanPham, doiTuongSuDung, loiIch, moTa);
		
		boolean rs = sanPhamDao.SuaSanPham(sp);
		qlSanPham(request, response);
	}
	
	private void luuSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		// TODO Auto-generated method stub
		String tenSp = request.getParameter("tenSp");
		double giaSp = Double.parseDouble(request.getParameter("giaSanPham"));
		
		int luotMua = 0;		
		NhaCungCap nhaCungCap = nhaCungCapDao.getAllNhaCungCapTheoTenNhaCungCap(request.getParameter("slNhaCungCap"));		
		String loaiSanPham = request.getParameter("slLoaiSanPham");	
		String doiTuongSuDung = request.getParameter("doiTuongSuDung");
		String loiIch = request.getParameter("loiIch");
		String moTa = request.getParameter("moTaSanPham");
	
		Part file = request.getPart("imgSanPham");
		String imageSp = file.getSubmittedFileName();
		String upLoadPart = "D:/N3_HK2/LapTrinhWWW/BaiTapLon/WorkSpace/WedThucPhamChucNang-Servler-app/src/main/webapp/images/" + imageSp;		
		try {
			FileOutputStream fos = new FileOutputStream(upLoadPart);
			InputStream is = file.getInputStream();
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
		//---------------------------------------------
		SanPham sp = new SanPham(tenSp, giaSp, imageSp, luotMua, nhaCungCap, loaiSanPham, doiTuongSuDung, loiIch, moTa);
		sanPhamDao.themSanPham(sp);
		
		qlSanPham(request, response);
	}

	private void qlTaiKhoan(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		 List<NguoiDung> lsNguoiDung = nguoiDungDao.getAllNguoiDung();
	        request.setAttribute("LsTaiKhoan", lsNguoiDung);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("/QLTaiKhoan.jsp");
	        dispatcher.forward(request, response);	
	}

	private void qlSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		List<SanPham> ls = sanPhamDao.getAllSanPham();
		List<NhaCungCap> lsCaps = new ArrayList<NhaCungCap>();
		for (SanPham sp : ls) {
			lsCaps.add(nhaCungCapDao.getAllNhaCungCapTheoMaNhaCungCap(sp.getNhaCungCap().getMaNhaCungCap()));
		}
		request.setAttribute("LsSanPham", ls);
		request.setAttribute("lsNhaCungCap", lsCaps);
				
		RequestDispatcher dispatcher = request.getRequestDispatcher("/QlSanPham.jsp");
		dispatcher.forward(request, response);			
	}

	private void thanhToan(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		String hoTen = request.getParameter("hoTen");
        String diaChi = request.getParameter("diaChi");
        String soDienThoai = request.getParameter("soDienThoai");
        String email = request.getParameter("email");
        String ghiChu = request.getParameter("ghiChu");
        Double tongTien = Double.parseDouble(request.getParameter("tongTien"));
        int soLuong = Integer.parseInt(request.getParameter("soLuong"));
        long millis=System.currentTimeMillis(); 
        java.sql.Date date=new java.sql.Date(millis);
        DonHang donHang = new DonHang(nguoiDungHienTai,date,soLuong,tongTien,ghiChu);
        Boolean rs = donHangDao.themDonHang(donHang);
        
        danhSachSanPhamDao.xoaDanhMucSanPhamVoiMaKhachHang(nguoiDungHienTai.getMaNd());
        
        TrangChu(request, response);	
	}

	private void datHang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		double tongTien = Double.parseDouble(request.getParameter("TongTien"));		
		ThongTinChiTietNguoiDung tt = chiTietNguoiDungDao.tinThongTinNguoiDung(nguoiDungHienTai.getMaNd());	
		if(tt == null) {	
			tt = new ThongTinChiTietNguoiDung("","","",nguoiDungHienTai);
		}
		System.out.println(tt);
		tt.setNguoiDung(nguoiDungHienTai);
		request.setAttribute("ThongTinNguoiDung", tt);		
		List<DanhSachSanPham> lsDanhSachSanPhams = danhSachSanPhamDao.getAllDanhSachSanPhams(nguoiDungHienTai.getMaNd());
		List<SanPham> lsSanPhams = new ArrayList<SanPham>();
		List<Integer> lsSoLuong = new ArrayList<Integer>();
		for (DanhSachSanPham ds : lsDanhSachSanPhams) {
			lsSanPhams.add(sanPhamDao.getOneSanPham(ds.getMaSP().getMaSp()));
			lsSoLuong.add(ds.getSoLuong());
		}
		request.setAttribute("tongTien", tongTien);
		request.setAttribute("LsSanPham", lsSanPhams);
		request.setAttribute("LsSoLuong", lsSoLuong);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/DonDat.jsp");
		dispatcher.forward(request, response);		
	}

	private void CapNhatSoLuongSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}		
		int sl = Integer.parseInt(request.getParameter("sl"));
		for(int i=0;i<sl;i++) {
			int maDs = Integer.parseInt(request.getParameter("maDs"+i));
			int maSp = Integer.parseInt(request.getParameter("maSp"+i));
			int SoLuong = Integer.parseInt(request.getParameter("SoLuong"+i));
			
			DanhSachSanPham ds = new DanhSachSanPham(maDs, new SanPham(maSp), nguoiDungHienTai, SoLuong);
			Boolean rs = danhSachSanPhamDao.suaThongTinDanhSachSanPham(ds);
		}
		formGioHang(request, response);		
	}

	private void xoaGioHang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		int maSp = Integer.parseInt(request.getParameter("maSp"));
		int maNd = nguoiDungHienTai.getMaNd();
		
		Boolean rs =  danhSachSanPhamDao.xoaDanhMucSanPham(maSp, maNd);
		formGioHang(request, response);
	}

	private void themGioHang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			int maSp = Integer.parseInt(request.getParameter("maSp"));
			
			DanhSachSanPham danhSachSanPham  = new DanhSachSanPham(new SanPham(maSp), nguoiDungHienTai, 1);
			DanhSachSanPham dsCoSan = danhSachSanPhamDao.getAllDanhSachSanPhamsTheoMaSP(nguoiDungHienTai.getMaNd(),maSp);			
			if(dsCoSan == null) {//Nếu trong giỏ hàng ko có sản phẩm tương tự				
				danhSachSanPhamDao.ThemDanhSachSanPham(danhSachSanPham);				
			}else {//nếu có sản phẩm tương tự		
				
				int sl = dsCoSan.getSoLuong() + 1;
				dsCoSan.setSoLuong(sl+1);
				danhSachSanPhamDao.suaThongTinDanhSachSanPham(dsCoSan);		
			}
			TrangChu(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Login.jsp");
			dispatcher.forward(request, response);
		}		
	}

	private void formGioHang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			List<DanhSachSanPham> lsDanhSachSanPhams = danhSachSanPhamDao.getAllDanhSachSanPhams(nguoiDungHienTai.getMaNd());
			List<SanPham> lsSanPhams = new ArrayList<SanPham>();
			List<Integer> lsSoLuong = new ArrayList<Integer>();
			for (DanhSachSanPham ds : lsDanhSachSanPhams) {
				lsSanPhams.add(sanPhamDao.getOneSanPham(ds.getMaSP().getMaSp()));			
				lsSoLuong.add(ds.getSoLuong());
			}
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);		
			request.setAttribute("LsSoLuong", lsSoLuong);
			request.setAttribute("LsSanPham", lsSanPhams);
			request.setAttribute("LsDanhSachSanPham", lsDanhSachSanPhams);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/GioHang.jsp");
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Login.jsp");
			dispatcher.forward(request, response);
		}
		
	}

	private void dangky(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String repass = request.getParameter("repass");
		String email = request.getParameter("email");
		NguoiDung nguoiDung = new NguoiDung(user, pass, "U", email);
		
		Boolean rs = nguoiDungDao.themNguoiDung(nguoiDung);
		if(rs == true) {
			nguoiDungHienTai = nguoiDungDao.KiemDangNhap(user, pass);
			TrangChu(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Login.jsp");
			dispatcher.forward(request, response);
		}
	}

	private void dangNhap(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("taiKhoan");
		String pass = request.getParameter("matKhau");
		
		nguoiDungHienTai = nguoiDungDao.KiemDangNhap(user, pass);
		if(nguoiDungHienTai != null) {				
			TrangChu(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Login.jsp");
			dispatcher.forward(request, response);
		}	
	}
	private void ChiTietSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		int maSp = Integer.parseInt(request.getParameter("maSp"));
		SanPham sanPham = sanPhamDao.getOneSanPham(maSp);
		List<SanPham> lsList = sanPhamDao.getAllSanPhamTheoLaoi(sanPham.getLoaiSanPham());
		request.setAttribute("LsSanPham", lsList);
		request.setAttribute("SanPham", sanPham);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ChiTietSanPham.jsp");
		dispatcher.forward(request, response);
		
	}

	private void DanhMucSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		String loai = request.getParameter("LoaiSp");
		List<SanPham> sanPham = sanPhamDao.getAllSanPhamTheoLaoi(loai);
		request.setAttribute("DS_SanPham", sanPham);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/DanhMucSanPham.jsp");
		dispatcher.forward(request, response);
	}

	private void TrangChu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(nguoiDungHienTai != null) {
			request.setAttribute("NguoiDungHienTai", nguoiDungHienTai);			
		}
		List<SanPham> lsSanPhams = sanPhamDao.getAllSanPham();
		request.setAttribute("DS_SanPham", lsSanPhams);	
		RequestDispatcher dispatcher = request.getRequestDispatcher("/TrangChu.jsp");
		dispatcher.forward(request, response);
	}

}
