package iuh.fit.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

import iuh.fit.entity.NguoiDung;
import iuh.fit.entity.ThongTinChiTietNguoiDung;

public class ThongTinChiTietNguoiDungDao {
	private DataSource dataSource;

	public ThongTinChiTietNguoiDungDao(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}
	private void close(Connection con, Statement stmt, ResultSet rs) {
		try {
			if(con!=null)
				con.close();
			if(stmt!=null)
				stmt.close();
			if(rs!=null) {
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public boolean themThongTinNguoiDung(ThongTinChiTietNguoiDung tt) {
		try {
			Connection con = dataSource.getConnection();
			PreparedStatement stmt = con.prepareStatement("Insert into ThongTinChiTietNguoiDung(Ma_ND,Ten_ND,Dia_Chi,So_Dien_Thoai)"
					+ " values(?,?,?,?)");			
			stmt.setInt(1, tt.getNguoiDung().getMaNd());
			stmt.setString(2, tt.getTenNd());
			stmt.setString(3, tt.getDiaChi());
			stmt.setString(4, tt.getSoDienThoai());			
			stmt.execute();
			close(con, stmt, null);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public void suaThongTinNguoiDung(ThongTinChiTietNguoiDung tt) {
		try {
			Connection con = dataSource.getConnection();
			PreparedStatement stmt = con.prepareStatement("Update ThongTinChiTietNguoiDung set Ma_ND = ?, Ten_ND = ?, Dia_Chi = ?, So_Dien_Thoai = ? ,where Ma_Chi_Tiet = ?");
			stmt.setInt(1, tt.getNguoiDung().getMaNd());
			stmt.setString(2, tt.getTenNd());
			stmt.setString(3, tt.getDiaChi());
			stmt.setString(4, tt.getSoDienThoai());
			stmt.setInt(5, tt.getMaTTCTND());
			stmt.execute();
			close(con, stmt, null);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//Tìm thông tin chi tiết người dùng theo mã người dùng
	public ThongTinChiTietNguoiDung tinThongTinNguoiDung(int maNd) {
		try {
			Connection con = dataSource.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from ThongTinChiTietNguoiDung where Ma_ND = "+maNd);	
			ThongTinChiTietNguoiDung thongTinChiTietNguoiDung = null;
			while (rs.next()) {
				thongTinChiTietNguoiDung = new ThongTinChiTietNguoiDung(rs.getInt(1), 
						new NguoiDung(rs.getInt(2)),
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5));
			}
			close(con,stmt,rs);
			return thongTinChiTietNguoiDung;			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
