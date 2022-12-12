package iuh.fit.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import iuh.fit.entity.NguoiDung;
import iuh.fit.entity.NhaCungCap;
import iuh.fit.entity.SanPham;

public class NguoiDungDao {
	private DataSource dataSource;

	public NguoiDungDao(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}
	public NguoiDung KiemDangNhap(String tk, String mk) {
		try {
			Connection con = dataSource.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from NguoiDung where Tai_Khoan = '"+tk+"'" );	
			NguoiDung nguoiDung = null;
			while (rs.next()) {
				nguoiDung = new NguoiDung(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5));
			}
			close(con,stmt,rs);
			if (nguoiDung.getMatKhau().equals(mk)) {
				return nguoiDung;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public boolean themNguoiDung(NguoiDung user) {
		try {
			Connection con = dataSource.getConnection();
			PreparedStatement stmt = con.prepareStatement("Insert into NguoiDung"
					+ " values(?,?,?,?)");
			stmt.setString(1, user.getTenTaiKhoan());
			stmt.setString(2, user.getMatKhau());
			stmt.setString(3, user.getLoaiTaiKhoan());
			stmt.setString(4, user.getEmail());			
			stmt.execute();
			close(con, stmt, null);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public void suaNguoiDung(NguoiDung user) {
		try {
			Connection con = dataSource.getConnection();
			PreparedStatement stmt = con.prepareStatement("Update NguoiDung set Tai_Khoan = ?, Mat_Khau = ?, Loai_Tai_Khoan = ?, Email = ? ,where Ma_ND = ?");
			stmt.setString(1, user.getTenTaiKhoan());
			stmt.setString(2, user.getMatKhau());
			stmt.setString(3, user.getLoaiTaiKhoan());
			stmt.setString(4, user.getEmail());
			stmt.setInt(5, user.getMaNd());
			stmt.execute();
			close(con, stmt, null);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public List<NguoiDung> getAllNguoiDung() {
        List<NguoiDung> lsNguoiDung = new ArrayList<NguoiDung>();
        try {
            Connection con = dataSource.getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Select * from NguoiDung");

            while (rs.next()) {
                lsNguoiDung.add(new NguoiDung(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)));
            }
            close(con,stmt,rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lsNguoiDung;
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
}
