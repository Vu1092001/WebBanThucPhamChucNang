CREATE DATABASE SANPHAM

Use SANPHAM

CREATE TABLE NhaCungCap(
	Ma_Nha_Cung_Cap int primary key identity(1,1),
	Ten_Nha_Cung_Cap nvarchar(500),
	Noi_San_Xuat nvarchar(500),
)

CREATE TABLE SanPham(
	Ma_Sp INT PRIMARY KEY IDENTITY(1,1),
	Ten_Sp NVARCHAR(500),
	Gia_Sp float,
	Image_Sp nvarchar(500),
	Luot_Mua int,
	Ma_Nha_Cung_Cap int,
	Loai_San_Pham nvarchar(500),
	Doi_Tuong_SD nvarchar(500),
	Loi_Ich nvarchar(500),
	Mo_Ta nvarchar(500),
)
--Khóa ngoại cho = SanPham
	ALTER TABLE SanPham ADD CONSTRAINT fk01_Sp FOREIGN KEY(Ma_Nha_Cung_Cap) REFERENCES NhaCungCap(Ma_Nha_Cung_Cap)

CREATE TABLE NguoiDung(
	Ma_ND int primary key identity(1,1),
	Tai_Khoan nvarchar(500),
	Mat_Khau nvarchar(500),
	Loai_Tai_Khoan nvarchar(500),
	Email nvarchar(500),
)

CREATE TABLE DanhSachSanPham(
	Ma_Danh_Sach_Sp int primary key identity(1,1),
	Ma_SP int,
	Ma_ND int,
	So_Luong int,
)
--Khóa ngoại cho DanhSachSanPham
	ALTER TABLE DanhSachSanPham ADD CONSTRAINT fk01_GH FOREIGN KEY(Ma_ND) REFERENCES NguoiDung(Ma_ND)
	ALTER TABLE DanhSachSanPham ADD CONSTRAINT fk02_GH FOREIGN KEY(Ma_SP) REFERENCES SanPham(Ma_SP)

CREATE TABLE ThongTinChiTietNguoiDung(
	Ma_Chi_Tiet int primary key identity(1,1),
	Ma_ND int,
	Ten_ND nvarchar(500),
	Dia_Chi nvarchar(500),
	So_Dien_Thoai nvarchar(500),
)
--Khóa ngoại cho = ThongTinChiTietNguoiDung
	ALTER TABLE ThongTinChiTietNguoiDung ADD CONSTRAINT fk01_TTCT FOREIGN KEY(Ma_ND) REFERENCES NguoiDung(Ma_ND)

CREATE TABLE DonHang(
	Ma_Don_Hang int primary key identity(1,1),
	Ma_ND int,
	Ngay_Dat date,
	So_Luong_Tong int,
	Tong_Tien float,
	Ghi_Chu nvarchar(500),
)
--Khóa ngoại cho DonHang
	ALTER TABLE DonHang ADD CONSTRAINT fk01_DH FOREIGN KEY(Ma_ND) REFERENCES NguoiDung(Ma_ND)

CREATE TABLE ChiTietDonHang(
	Ma_CTDH int primary key identity(1,1),
	Ma_SP int,
	Ma_Don_Hang int,
)
--Khóa ngoại cho ChiTietDonHang
	ALTER TABLE ChiTietDonHang ADD CONSTRAINT fk01_CTDH FOREIGN KEY(Ma_SP) REFERENCES SanPham(Ma_SP)
	ALTER TABLE ChiTietDonHang ADD CONSTRAINT fk02_CTDH FOREIGN KEY(Ma_Don_Hang) REFERENCES DonHang(Ma_Don_Hang)




--Người lớn, Trẻ Em, Người Già, Phụ Nữ
----------------------------------------------------insert------------------------------------------------------------
insert into NguoiDung
values('a', 'a', 'AD', 'nam@123')
insert into NguoiDung
values('u', 'u', 'U', 'nam@123')
insert into [dbo].[NhaCungCap]
values(N'ToanCau', N'Việt Nam')
insert into [dbo].[NhaCungCap]
values(N'GUCHI', N'Trung Quốc')
insert into [dbo].[NhaCungCap]
values(N'VITABELLA', N'Lào')
insert into [dbo].[NhaCungCap]
values(N'DAVINCI', N'Campuchia')
insert into [dbo].[NhaCungCap]
values(N'Trang Ly', N'Thái Lan')
insert into [dbo].[NhaCungCap]
values(N'SANAA', N'Myanmar')
insert into [dbo].[NhaCungCap]
values(N'PHD Healthcare', N'Malaysia')
insert into [dbo].[NhaCungCap]
values(N'Poliva', N'Singapore')
insert into [dbo].[NhaCungCap]
values(N'TANAPHAR', N'Indonesia')
insert into [dbo].[NhaCungCap]
values(N'Natural Balance', N'Philippines')
-----------------------Tảo biển
insert into [dbo].[SanPham]
	values (N'Tảo Xoắn Spirulina Nhật Bản', 619000,
	'hinhtoanxoan.jpg', 15, 2, N'Tảo biển' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ bổ sung dinh dưỡng cho người già, trẻ nhỏ, phụ nữ..: 
	Thành phần chính trong tảo xoắn là ')


insert into [dbo].[SanPham]
	values (N'Viên Uống Vitamin C Blackmores', 445000,
	'hinhblackmores.jpg', 35,6, N'Tảo biển' ,N'Trẻ Em', N'Nước Lọc',N'Hỗ trợ tăng cường sức đề kháng hạn chế xâm nhập các vi khuẩn ')

insert into [dbo].[SanPham]
	values (N' Tinh Chất Hàu Oyster',   254000,
	'hinhtinhhauuc.jpg', 15, 7, N'Tảo biển' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ tăng cường sinh lý nam hiệu quả ')

insert into [dbo].[SanPham]
	values (N'Ginkgo Biloba 120mg',454000,
	'hinhginkgo.jpg', 35, 10, N'Tảo biển' ,N'Người Già', N'Nước Lọc',N'hỗ trợ tuần hoàn não tăng cường trí nhớ ')


-----------------------HỖ TRỢ SỨC KHỎE

insert into [dbo].[SanPham]
	values (N'Dầu Nóng Hàn Quốc',85000,
	'hinhdaunong.jpg', 20, 7, N'Hỗ Trợ Sức Khỏe' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ xoa bóp ')

insert into [dbo].[SanPham]
	values (N'Viên Uống Thải Độc Gan Swisse',339000,
	'hinhvienuonghotro.jpg', 55, 9, N'Hỗ Trợ Sức Khỏe' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ thải độc gan thanh lọc cơ thể ')

insert into [dbo].[SanPham]
	values (N'Viên Sắt Cho Bà Bầu Blackmores',194000,
	'hinhviensat.jpg', 32, 5, N'Hỗ Trợ Sức Khỏe' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ trợ bổ sung dinh dưỡng sắt cho phụ nữ mang thai')


insert into [dbo].[SanPham]
	values (N'Tinh Chất Hàu Oyster', 619000,
	'hinhtinhhau.jpg', 25, 4, N'Hỗ Trợ Sức Khỏe' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ bổ sung dinh dưỡng hàm lượng kẽm cao ')

-------------------- VIÊN UỐNG TRẮNG DA
insert into [dbo].[SanPham]
	values (N'Pure White Dạng Nước Trắng Da', 494000,
	'hinhshiseido.jpg', 50, 10, N'Viên uống trắng da' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ trợ bổ sung dinh dưỡng cho người già, trẻ nhỏ, phụ nữ..: 
	Thành phần chính trong tảo xoắn là ')

insert into [dbo].[SanPham]
	values (N'The Collagen EXR Của Nhật',  635000,
	'hinhthecollagen.jpg', 45,5, N'Viên uống trắng da' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ trợ làm đẹp và chăm sóc da ')

insert into [dbo].[SanPham]
	values (N'Tinh Dầu Anh Thảo Blackmores', 455000,
	'hinhblackmoress.jpg', 75,1, N'Viên uống trắng da' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ trợ cân băng nội tiết làm đẹp da ')

insert into [dbo].[SanPham]
	values (N'Kirkland Vitamin E 400 IU',3795000,
	'hinhkirkalnd.jpg', 70,10, N'Viên uống trắng da' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ trợ dưỡng ẩm da ngừa lão hóa ')

----------------------COLLAGEN
insert into [dbo].[SanPham]
	values (N'The Collagen Shiseido Của Nhật', 489000,
	'hinhcollagen.jpg', 15,8, N'Collagen' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ bổ sung Collagen và HA cho cơ thể ')

insert into [dbo].[SanPham]
	values (N'Kirkland Glucosamine', 540000,
	'hinhglucasamie.jpg', 25, 9, N'Collagen' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ bổ Xương khớp ')

insert into [dbo].[SanPham]
	values (N'Collagen Youtheory', 559000,
	'hinhcollagens.jpg', 37, 6, N'Collagen' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ bổ sung vitamin c và collagen')

insert into [dbo].[SanPham]
	values (N'Collagen Neocell + C ', 649000,
	'hinhneocell.jpg', 35,3, N'Collagen' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ bổ sung dinh dưỡng cho các cơ và dây chằng')

---------------------SỮA ONG CHÚA
insert into [dbo].[SanPham]
	values (N'Natrol Gummies Kẹo Dẻo',432000,
	'hinhnatrollmelatonin.jpg', 30,6, N'Sữa ong chúa' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ giảm thiểu căng thẳng mệt mỏi')

insert into [dbo].[SanPham]
	values (N'Viên Uống Hỗ Trợ Trắng Da',575000,
	'hinhivorycaps.jpg', 45,7, N'Sữa ong chúa' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ Trợ Trắng Da Giảm Nám ')

insert into [dbo].[SanPham]
	values (N'Viên Uống DHC 32 Loại Rau, Củ',255000,
	'hinhdbcc.jpg',55,8, N'Sữa ong chúa' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ bổ sung chất xơ cho cở thể ')

insert into [dbo].[SanPham]
	values (N'Viên Uống Glucosamine',529000,
	'hinhglucosaminee.jpg', 60,9, N'Sữa ong chúa' ,N'Người Già', N'Nước Lọc',N'Hỗ trợ bổ sung glucosamine cho cở thể ')

-------------------Tăng chiều cao

insert into [dbo].[SanPham]
	values (N'GH Creation EX Hỗ Trợ Tăng Chiều Cao', 619000,
	'hinhgh.jpg', 10, 1, N'Tăng chiều cao' ,N' Trẻ Em', N'Nước Lọc',N'Hỗ trợ thúc đẩy tăng trưởng chiều cao tự nhiên')

insert into [dbo].[SanPham]
	values (N'Viên Uống Glucosamine 1500mg', 639000,
	'hinhglucosamine.jpg', 65,2, N'Tăng chiều cao' ,N'Người Già', N'Nước Lọc',N'Hỗ trợ hệ xương khớp khỏe mạnh ')

insert into [dbo].[SanPham]
	values (N'Canxi Ostelin & Vitamin D3',  260000,
	'hinhcanxi.jpg', 25, 3, N'Tăng chiều cao' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ bổ sung dinh dưỡng canxi và vitamin D3 ')

insert into [dbo].[SanPham]
	values (N'Detoxic Của Nga, Đen - con nhộng', 207000,
	'hinhdetoxic.jpg', 35, 8, N'Tăng chiều cao' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ tình trạng tiêu hóa, hôi miệng ')



----------------------------Nhau Thai Cừu

insert into [dbo].[SanPham]
	values (N'Viên Uống Wealthy Health PM', 495000,
	'hinhduytri.jpg',65,10, N'Nhau Thai Cừu' ,N'Người Già', N'Nước Lọc',N'Hỗ trợ duy trì hô hấp khỏe mạnh ')

insert into [dbo].[SanPham]
	values (N'Viên Uống Doctors Best Nattokinase',835000,
	'hinhnattokinase.jpg', 85, 8, N'Nhau Thai Cừu' ,N'Người Già', N'Nước Lọc',N'Hỗ trợ tốt cho sức khỏe tim mạch ')


insert into [dbo].[SanPham]
	values (N'Viên Uống Ginkgo Biloba', 198000,
	'hinhginkgos.jpg',55, 4, N'Nhau Thai Cừu' ,N'Người Già', N'Nước Lọc',N'Hỗ trợ tốt các vấn đề trí nhớ não bộ ')

insert into [dbo].[SanPham]
	values (N'Milk Thistle Extract Hãng Puritan', 345000,
	'hinhmilkthistle.jpg', 66,3, N'Nhau Thai Cừu' ,N'Người Già', N'Nước Lọc',N'Hỗ trợ bổ sung dinh dưỡng ,chức năng gan')




----------------------Vitamin Và Khoáng Chất
insert into [dbo].[SanPham]
	values (N'Viên Uống Mọc Tóc Natrol Biotin',219000,
	'hinhnatrolbiotin.jpg', 85,1, N'Vitamin Và Khoáng Chất' ,N'Trẻ Em', N'Nước Lọc',N'Hỗ trợ bổ sung vitamin C B H ')

insert into [dbo].[SanPham]
	values (N'Viên Uống Vitamin C Blackmores',449000,
	'hinhbackmores.jpg', 15, 2, N'Vitamin Và Khoáng Chất' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ Trợ Tăng Khả Năng Thụ Thai ')

insert into [dbo].[SanPham]
	values (N'Viên Uống Vitamin C DHC Nhật Bản',115000,
	'hinhdhc.jpg', 19,4, N'Vitamin Và Khoáng Chất' ,N'Trẻ Em', N'Nước Lọc',N'Hỗ trợ bổ sung Vitamin C DHC ')

insert into [dbo].[SanPham]
	values (N'Viên Uống Trắng Da DHC Extract Của Nhật Bản',115000,
	'hinhdbc.jpg', 20,5, N'Vitamin Và Khoáng Chất' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ trợ làm đẹp da dưỡng ẩm ')


----------------------Tinh dầu hoa anh thảo
insert into [dbo].[SanPham]
	values (N'Blackmores Glucosamine Của Úc',605000,
	'hinhblackmoress.jpg', 90,7, N'Tinh dầu hoa anh thảo' ,N'Người Già', N'Nước Lọc',N'Hỗ trợ tình trạng đau nhức xương khớp ')

insert into [dbo].[SanPham]
	values (N'Viên Uống Hỗ Trợ Giảm Rụng Tóc Biotin Ultra Mega Puritans Pride',25000,
	'hinhthuocbiotin.jpg', 55, 1, N'Tinh dầu hoa anh thảo' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ trợ giảm tình trạng gãy rụng tóc ')

insert into [dbo].[SanPham]
	values (N'Viên Kẽm Hỗ Trợ Cải Thiện Mụn Zinc For Acne Puritan’s Pride Của Mỹ',230000,
	'hinhzincforacne.jpg', 75,3, N'Tinh dầu hoa anh thảo' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ Hỗ Trợ Cải Thiện Mụn ')

insert into [dbo].[SanPham]
	values (N'Hỗ Trợ Mọc Tóc Minoxidil 5% Mens Rogaine Foam Dạng Bọt Cho Nam',115000,
	'hinhrogaine.jpg', 95,6, N'Tinh dầu hoa anh thảo' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ trợ mọc tóc cái thiện tóc ')




-------------------------Đông trùng hạ thảo
insert into [dbo].[SanPham]
	values (N'Mầm Đậu Nành Healthy Care Super Lecithin 1200mg Của Úc 100 Viên',215000,
	'hinhsuperlecithin.jpg', 85,5, N'Đông trùng hạ thảo' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ trợ làm đẹp da giúp da căng đẹp mịn màng ')

insert into [dbo].[SanPham]
	values (N'Vitamin C 1000mg Kirkland Hộp 500 Viên - Vitamin C Của Mỹ',519000,
	'hinhkirkland.jpg', 80,4, N'Đông trùng hạ thảo' ,N'Người Lớn', N'Nước Lọc',N'Hỗ trợ tăng cường sức đề kháng bảo vệ cơ thể  ')

insert into [dbo].[SanPham]
	values (N'Viên Uống Maxman Hỗ Trợ Tăng Cường Sinh Lý Nam',229000,
	'hinhthuocmax.jpg', 65, 2, N'Đông trùng hạ thảo' ,N'Người Lớn', N'Nước Lọc',N'Hỗ Trợ Tăng Cường Sinh Lý Nam ')

insert into [dbo].[SanPham]
	values (N'Viên Uống Puritans Pride Premium L-Glutathione 500mg',355000,
	'hinhlglutathione.jpg', 75,9, N'Đông trùng hạ thảo' ,N'Phụ Nữ', N'Nước Lọc',N'Hỗ trợ trắng da và tăng cường hệ miễn dịch ')

	select * from ThongTinChiTietNguoiDung