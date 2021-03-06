CREATE DATABASE QLBH
-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-01-21 14:22:55.847




-- tables
-- Table: ChiTietHoaDon
CREATE TABLE ChiTietHoaDon (
    MaHD nvarchar(30)  NOT NULL,
    SoLuong int  NULL,
    MaSP nvarchar(30)  NOT NULL,
    DonGia money  NULL,
    CONSTRAINT ChiTietHoaDon_pk PRIMARY KEY  (MaHD)
)
;





-- Table: HoaDon
CREATE TABLE HoaDon (
    MaHD nvarchar(30)  NOT NULL,
    Ngay datetime  NULL,
    MaKH nvarchar(30)  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY  (MaHD)
)
;





-- Table: KhachHang
CREATE TABLE KhachHang (
    MaKH nvarchar(30)  NOT NULL,
    TenKH nvarchar(30)  NULL,
    email nvarchar(50)  NULL,
    Diachi nvarchar(50)  NULL,
    SDT nvarchar(15)  NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY  (MaKH)
)
;





-- Table: LoaiSanPham
CREATE TABLE LoaiSanPham (
    MaSP nvarchar(30)  NOT NULL,
    TenSP nvarchar(50)  NULL,
    SL int  NULL,
    CONSTRAINT LoaiSanPham_pk PRIMARY KEY  (MaSP)
)
;





-- Table: SanPham
CREATE TABLE SanPham (
    MaSP nvarchar(30)  NOT NULL,
    NoiSX nvarchar(50)  NULL,
    Gia decimal(12,2)  NULL,
    MieuTa nvarchar(100)  NULL,
    img image  NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY  (MaSP)
)
;









-- foreign keys
-- Reference:  client_purchase (table: HoaDon)

ALTER TABLE HoaDon ADD CONSTRAINT client_purchase 
    FOREIGN KEY (MaKH)
    REFERENCES KhachHang (MaKH)
;

-- Reference:  product_category_product (table: SanPham)

ALTER TABLE SanPham ADD CONSTRAINT product_category_product 
    FOREIGN KEY (MaSP)
    REFERENCES LoaiSanPham (MaSP)
;

-- Reference:  product_purchase_item (table: ChiTietHoaDon)

ALTER TABLE ChiTietHoaDon ADD CONSTRAINT product_purchase_item 
    FOREIGN KEY (MaSP)
    REFERENCES SanPham (MaSP)
;

-- Reference:  purchase_purchase_item (table: ChiTietHoaDon)

ALTER TABLE ChiTietHoaDon ADD CONSTRAINT purchase_purchase_item 
    FOREIGN KEY (MaHD)
    REFERENCES HoaDon (MaHD)
;





-- End of file.

-- truy xuat bang--
select * from dbo.ChiTietHoaDon
select * from dbo.HoaDon
select * from dbo.KhachHang
select * from dbo.LoaiSanPham
select * from dbo.SanPham

----nhập dữ liệu---

---- bảng khách hàng---
INSERT INTO KhachHang VALUES (N'MaKH01',N'Nguyễn Văn Toàn',null,N'Hà Nội',N'0984283121')
INSERT INTO KhachHang VALUES (N'MaKH02',N'Phạm Thanh Tùng',null,N'Hà Nội',N'01643728928')
INSERT INTO KhachHang VALUES (N'MaKH03',N'Trần Tuấn Minh',N'tuanminh@gmail.com',N'Hà Nội',N'0957752278')
INSERT INTO KhachHang VALUES (N'MaKH04',N'Trần Thị Hằng',N'tranhang@gmai.com',N'Hà Nội',N'0127695947')
INSERT INTO KhachHang VALUES (N'MaKH05',N'Cao Duy Tuấn',null,N'Hà Nội',N'01658748293')


----bảng hóa đơn--
INSERT INTO HoaDon VALUES (N'MaHD01',N'01/10/2016',N'MaKH03')
INSERT INTO HoaDon VALUES (N'MaHD02',N'11/12/2015',N'MaKH02')
INSERT INTO HoaDon VALUES (N'MaHD03',N'01/02/2016',N'MaKH01')
INSERT INTO HoaDon VALUES (N'MaHD04',N'12/28/2015',N'MaKH05')
INSERT INTO HoaDon VALUES (N'MaHD05',N'12/24/2015',N'MaKH04')

----bảng loại sản phẩm--
INSERT INTO LoaiSanPham VALUES (N'MaSP01',N'Quạt Điện','20')
INSERT INTO LoaiSanPham VALUES (N'MaSP02',N'Nồi Cơm Điện','15')
INSERT INTO LoaiSanPham VALUES (N'MaSP03',N'Ấm Siêu Tốc','50')
INSERT INTO LoaiSanPham VALUES (N'MaSP04',N'Máy Sấy Tóc','70')
INSERT INTO LoaiSanPham VALUES (N'MaSP05',N'Bếp Ga','35')



----bảng sản phẩm---
INSERT INTO SanPham VALUES (N'MaSP01',N'Bắc Từ Liêm-Hà Nội','35000',null,null)
INSERT INTO SanPham VALUES (N'MaSP02',N'Ba Đình-Hà Nội','1200600',null,null)
INSERT INTO SanPham VALUES (N'MaSP03',N'Đông Ngạc-Từ Liêm','200380',null,null)
INSERT INTO SanPham VALUES (N'MaSP04',N'Hà Tây','147000',null,null)
INSERT INTO SanPham VALUES (N'MaSP05',N'Bắc Ninh','238000',null,null)


--- bảng chi tiết hóa đơn---

INSERT INTO ChiTietHoaDon VALUES (N'MaHD01','2',N'MaSP01',N'70000')
INSERT INTO ChiTietHoaDon VALUES (N'MaHD02','3',N'MaSP03',N'600760')
INSERT INTO ChiTietHoaDon VALUES (N'MaHD03','1',N'MaSP04',N'147000')
INSERT INTO ChiTietHoaDon VALUES (N'MaHD04','3',N'MaSP05',N'1190000')
INSERT INTO ChiTietHoaDon VALUES (N'MaHD05','1',N'MaSP02',N'1200600')


