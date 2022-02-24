create database car_management;
use car_management;
create table NhaCungCap
(
    MaNhaCC  varchar(10) not null primary key,
    TenNhaCC varchar(30),
    DiaChi   varchar(50),
    SoDT     varchar(10),
    MaSoThue varchar(30)
);
create table DangKyCungCap
(
    MaDKCC             varchar(10) not null primary key,
    MaNhaCC            varchar(10) not null,
    MaLoaiDV           varchar(10) not null,
    DongXe             varchar(20) not null,
    MaMP               varchar(10) not null,
    NgayBatDauCungCap  varchar(10),
    NgayKetThucCungCap varchar(10),
    SoLuongXeDangKy    int
);
create table LoaiDichVu
(
    MaLoaiDV  varchar(10) not null primary key,
    TenLoaiDV varchar(50)
);

create table MucPhi
(
    MaMP   varchar(10) not null primary key,
    DonGia varchar(30) not null,
    MoTa   varchar(50)
);
create table DongXe
(
    DongXe    varchar(20) not null primary key,
    HangXe    varchar(20) not null,
    SoChoNgoi int         not null
);
alter table DangKyCungCap
    add constraint foreign key (MaNhaCC) references NhaCungCap (MaNhaCC);
alter table DangKyCungCap
    add constraint foreign key (MaLoaiDV) references LoaiDichVu (MaLoaiDV);
alter table DangKyCungCap
    add constraint foreign key (DongXe) references DongXe (DongXe);
alter table DangKyCungCap
    add constraint foreign key (MaMP) references MucPhi (MaMP);

Insert Into NhaCungCap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC001', N'Cty TNHH Toàn Phát', 'Hai Chau', '05113399', '568941');
Insert Into NhaCungCap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC002', N'Cty Cổ Phần Đông Du', 'Lien Chieu', '0511339', '456789');
Insert Into NhaCungCap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC003', N'Ông Nguyễn Văn A', 'Hoa Thuan', '0511339', '321456');
Insert Into NhaCungCap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC004', N'Cty Cổ Phần Toàn Cầu Xanh', 'Hai Chau', '0511365', '513364');
Insert Into NhaCungCap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC005', N'Cty TNHH AMA', 'Thanh Khe', '05110387', '546546');
Insert Into NhaCungCap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC006', N'Bà Trần Thị Bích Vân', 'Lien Chieu', '0511358', '524545');
Insert Into NhaCungCap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC007', N'Cty TNHH Phan Thành', 'Thanh Khe', '05113987', '113021');
Insert Into NhaCungCap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC008', N'Ông Phan Đình Nam', 'Hoa Thuan', '0511353', '121230');
Insert Into NhaCungCap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC009', N'Tập đoàn Đông Nam Á', 'Lien Chieu', '0511398', '533654');
Insert Into NhaCungCap (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC010', N'Cty Cổ Phần Rạng đông', 'Lien Chieu', '0511356', '187864');

Insert Into LoaiDichVu (MaLoaiDV, TenLoaiDV)
Values ('DV01', N'Dịch vụ xe taxi');
Insert Into LoaiDichVu (MaLoaiDV, TenLoaiDV)
Values ('DV02', N'Dịch vụ xe buýt công cộng theo tuyến cố định');
Insert Into LoaiDichVu (MaLoaiDV, TenLoaiDV)
Values ('DV03', N'Dịch vụ cho thuê xe theo hợp đồng');

Insert Into MucPhi (MaMP, DonGia, MoTa)
Values ('MP01', '10000', N'Áp dụng từ ngày 1/2015');
Insert Into MucPhi (MaMP, DonGia, MoTa)
Values ('MP02', '15000', N'Áp dụng từ ngày 2/2015');
Insert Into MucPhi (MaMP, DonGia, MoTa)
Values ('MP03', '20000', N'Áp dụng từ ngày 1/2010');
Insert Into MucPhi (MaMP, DonGia, MoTa)
Values ('MP04', '25000', N'Áp dụng từ ngày 2/2011');

Insert Into DongXe (DongXe, HangXe, SoChoNgoi)
Values ('Hiace', 'Toyota', 16);
Insert Into DongXe (DongXe, HangXe, SoChoNgoi)
Values ('Vios', 'Toyota', 5);
Insert Into DongXe (DongXe, HangXe, SoChoNgoi)
Values ('Escape', 'Ford', 5);
Insert Into DongXe (DongXe, HangXe, SoChoNgoi)
Values ('Cerato', 'KIA', 7);
Insert Into DongXe (DongXe, HangXe, SoChoNgoi)
Values ('Forte', 'KIA', 5);
Insert Into DongXe (DongXe, HangXe, SoChoNgoi)
Values ('Starex', 'Huyndai', 7);
Insert Into DongXe (DongXe, HangXe, SoChoNgoi)
Values ('Grand-i10', 'Huyndai', 7);

Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK001', 'NCC001', 'DV01', 'Hiace', 'MP01', '2015/11/20', '2016/11/20');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK002', 'NCC002', 'DV02', 'Vios', 'MP02', '2015/11/20', '2017/11/20');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK003', 'NCC003', 'DV03', 'Escape', 'MP03', '2017/11/20', '2018/11/20');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK004', 'NCC005', 'DV01', 'Cerato', 'MP04', '2015/11/20', '2019/11/20');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK005', 'NCC002', 'DV02', 'Forte', 'MP03', '2019/11/20', '2020/11/20');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK006', 'NCC004', 'DV03', 'Starex', 'MP04', '2016/11/10', '2021/11/20');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK007', 'NCC005', 'DV01', 'Cerato', 'MP03', '2015/11/30', '2016/01/25');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK008', 'NCC006', 'DV01', 'Vios', 'MP02', '2016/02/28', '2016/08/15');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK009', 'NCC005', 'DV03', 'Grand-i10', 'MP02', '2016/04/27', '2017/04/30');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK010', 'NCC006', 'DV01', 'Forte', 'MP02', '2016/11/21', '2016/02/22');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK011', 'NCC007', 'DV01', 'Forte', 'MP01', '2016/12/25', '2017/02/20');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK012', 'NCC007', 'DV03', 'Cerato', 'MP01', '2016/04/14', '2017/12/20');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK013', 'NCC003', 'DV02', 'Cerato', 'MP01', '2015/12/21', '2016/12/21');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK014', 'NCC008', 'DV02', 'Cerato', 'MP01', '2016/05/20', '2016/12/30');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK015', 'NCC003', 'DV01', 'Hiace', 'MP02', '2018/04/24', '2019/11/20');
Insert Into DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK016', 'NCC001', 'DV03', 'Grand-i10', 'MP02', '2016/06/22', '2016/12/21');

Insert Into DANGKYCUNGCAP (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK017', 'NCC002', 'DV03', 'Cerato', 'MP03', '2016/09/30', '2019/09/30');
Insert Into DANGKYCUNGCAP (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK018', 'NCC008', 'DV03', 'Escape', 'MP04', '2017/12/13', '2018/09/30');
Insert Into DANGKYCUNGCAP (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK019', 'NCC003', 'DV03', 'Escape', 'MP03', '2016/01/24', '2016/12/30');
Insert Into DANGKYCUNGCAP (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK020', 'NCC002', 'DV03', 'Cerato', 'MP04', '2016/05/03', '2017/10/21');
Insert Into DANGKYCUNGCAP (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK021', 'NCC006', 'DV01', 'Forte', 'MP02', '2015/01/30', '2016/12/30');
Insert Into DANGKYCUNGCAP (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK022', 'NCC002', 'DV02', 'Cerato', 'MP04', '2016/07/25', '2017/12/30');
Insert Into DANGKYCUNGCAP (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK023', 'NCC002', 'DV01', 'Forte', 'MP03', '2017/11/30', '2018/05/20');
Insert Into DANGKYCUNGCAP (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK024', 'NCC003', 'DV03', 'Forte', 'MP04', '2017/12/23', '2019/11/30');
Insert Into DANGKYCUNGCAP (MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap)
Values ('DK025', 'NCC003', 'DV03', 'Hiace', 'MP02', '2016/08/24', '2017/10/25');

-- Liệt kê những dòng xe có số chỗ ngồi trên 5 chỗ
select *
from DongXe
where SoChoNgoi > 5;
-- Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp những dòng xe thuộc hãng xe “Toyota” với mức phí có đơn giá là 15.000 VNĐ/km hoặc những dòng xe thuộc hãng xe “KIA” với mức phí có đơn giá là 20.000 VNĐ/km

select NCC.MaNhaCC, NCC.TenNhaCC
from NhaCungCap NCC
         join dangkycungcap d on NCC.MaNhaCC = d.MaNhaCC
         join mucphi m on d.MaMP = m.MaMP
         join DongXe DX on d.DongXe = DX.DongXe
where (HangXe = 'Toyota' and DonGia = '150000')
   or (HangXe = 'KIA' and DonGia = '20000');

-- Liệt kê thông tin toàn bộ nhà cung cấp được sắp xếp tăng dần theo tên nhà cung cấp và giảm dần theo mã số thuế
select *
from NhaCungCap
order by TenNhaCC ASC, MaSoThue DESC;
-- Đếm số lần đăng ký cung cấp phương tiện tương ứng cho từng nhà cung cấp với yêu cầu chỉ đếm cho những nhà cung cấp thực hiện đăng ký cung cấp có ngày bắt đầu cung cấp là “20/11/2015”
select NCC.MaNhaCC, NCC.TenNhaCC, count(NCC.MaNhaCC) as 'Số Lần CC'
from NhaCungCap NCC
         join dangkycungcap d on NCC.MaNhaCC = d.MaNhaCC
where d.NgayBatDauCungCap = '2015/11/20'
group by NCC.MaNhaCC, NCC.TenNhaCC;
-- Liệt kê tên của toàn bộ các hãng xe có trong cơ sở dữ liệu với yêu cầu mỗi hãng xe chỉ được liệt kê một lần
select HangXe
from DongXe
group by HangXe;
-- Liệt kê MaDKCC, MaNhaCC, TenNhaCC, DiaChi, MaSoThue, TenLoaiDV, DonGia, HangXe, NgayBatDauCC, NgayKetThucCC của tất cả các lần đăng ký cung cấp phương tiện với yêu cầu những nhà cung cấp nào chưa từng thực hiện đăng ký cung cấp phương tiện thì cũng liệt kê thông tin những nhà cung cấp đó ra
select d.MaDKCC,
       NCC.MaNhaCC,
       NCC.TenNhaCC,
       NCC.DiaChi,
       NCC.MaSoThue,
       l.TenLoaiDV,
       m.DonGia,
       DX.HangXe,
       d.NgayBatDauCungCap,
       d.NgayKetThucCungCap
from dangkycungcap d
         join NhaCungCap NCC on NCC.MaNhaCC = d.MaNhaCC
         join loaidichvu l on d.MaLoaiDV = l.MaLoaiDV
         join mucphi m on d.MaMP = m.MaMP
         join DongXe DX on d.DongXe = DX.DongXe;
-- Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp phương tiện thuộc dòng xe “Hiace” hoặc từng đăng ký cung cấp phương tiện thuộc dòng xe “Cerato”
select NCC.MaNhaCC, NCC.TenNhaCC
from NhaCungCap NCC
where NCC.MaNhaCC in (
    select DK.MaNhaCC
    from DangKyCungCap DK
    where DK.DongXe = 'Hiace'
       or DK.DongXe = 'Cerato'
);
-- Liệt kê thông tin của các nhà cung cấp chưa từng thực hiện đăng ký cung cấp phương tiện lần nào cả
select NCC.MaNhaCC, NCC.TenNhaCC
from NhaCungCap NCC
where not exists(
        select *
        from DangKyCungCap DK
        where NCC.MaNhaCC = DK.MaNhaCC
    );






