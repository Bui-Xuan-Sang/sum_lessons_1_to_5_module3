create database employee_management;
use employee_management;
create table NhanVien
(
    MaNhanVien  varchar(20) not null primary key unique,
    Ho          varchar(10) not null,
    Ten         varchar(20) not null,
    NgaySinh    varchar(10) not null,
    NgayLamViec varchar(10),
    DiaChi      varchar(50) not null,
    DienThoai   varchar(10) not null unique,
    LuongCoBan  varchar(20) not null,
    PhuCap      varchar(20)
);

create table KhachHang
(
    MaKhachHang varchar(20) not null primary key unique,
    TenCongTy   varchar(50) not null,
    TenGiaoDich varchar(50) not null,
    DiaChi      varchar(50) not null,
    Email       varchar(20) not null unique,
    DienThoai   varchar(10) not null unique,
    Fax         varchar(10) unique
);

create table NhaCungCap
(
    MaCongTy    varchar(20) not null primary key unique,
    TenCongTy   varchar(50) not null unique,
    TenGiaoDich varchar(50) not null,
    DiaChi      varchar(50) not null,
    DienThoai   varchar(50) not null,
    Fax         varchar(10) not null unique,
    Email       varchar(20) not null unique
);

create table MatHang
(
    MaHang     varchar(20) not null primary key,
    TenHang    varchar(50) not null,
    MaCongTy   varchar(20) not null,
    MaLoaiHang varchar(20) not null,
    SoLuong    int         not null,
    DonViTinh  varchar(10),
    GiaHang    varchar(20)
);

create table LoaiHang
(
    MaLoaiHang  varchar(20) not null primary key,
    TenLoaiHang varchar(20) not null
);

create table ChiTietDatHang
(
    SoHoaDon   int  not null,
    MaHang     varchar(20)     not null,
    GiaBan     varchar(20)     not null,
    SoLuong    int             not null,
    MucGiamGia varchar(10),
    primary key (SoHoaDon,MaHang)
);

create table DonDatHang
(
    SoHoaDon       int primary key not null,
    MaKhachHang    varchar(20)     not null unique,
    MaNhanVien     varchar(20)     not null unique,
    NgayDatHang    varchar(10),
    NgayGiaoHang   varchar(10),
    NgayChuyenHang varchar(10),
    NoiGiaoHang    varchar(50)
);

alter table ChiTietDatHang
    add foreign key (SoHoaDon) references DonDatHang(SoHoaDon);
alter table DonDatHang
    add foreign key (MaKhachHang) references KhachHang(MaKhachHang);
alter table ChiTietDatHang
    add foreign key (MaHang) references MatHang(MaHang);
alter table MatHang
    add foreign key (MaCongTy) references NhaCungCap(MaCongTy);
alter table MatHang
    add foreign key (MaLoaiHang) references LoaiHang(MaLoaiHang);
alter table DonDatHang
    add foreign key (MaNhanVien) references NhanVien(MaNhanVien);