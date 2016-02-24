<%@ Page Title="Trang Chủ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2></h2>
            </hgroup>
            <p>
                
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3></h3>
    <ol class="round">
        <li class="one">
            <h5>Bảng Khách Hàng</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                    <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="Diachi" HeaderText="Diachi" SortExpression="Diachi" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KhachHang] ([MaKH], [TenKH], [email], [Diachi], [SDT]) VALUES (@MaKH, @TenKH, @email, @Diachi, @SDT)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [TenKH] = @TenKH, [email] = @email, [Diachi] = @Diachi, [SDT] = @SDT WHERE [MaKH] = @MaKH">
                <DeleteParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="Diachi" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="Diachi" Type="String" />
                    <asp:Parameter Name="SDT" Type="String" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="Ngay" HeaderText="Ngay" SortExpression="Ngay" />
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [Ngay], [MaKH]) VALUES (@MaHD, @Ngay, @MaKH)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [Ngay] = @Ngay, [MaKH] = @MaKH WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="Ngay" Type="DateTime" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Ngay" Type="DateTime" />
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <h5>Chi Tiết Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                    <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaHD], [SoLuong], [MaSP], [DonGia]) VALUES (@MaHD, @SoLuong, @MaSP, @DonGia)" SelectCommand="SELECT * FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuong] = @SoLuong, [MaSP] = @MaSP, [DonGia] = @DonGia WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="DonGia" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SoLuong" Type="Int32" />
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="DonGia" Type="Decimal" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </li>
         <li class="four">
            <h5>Sản Phẩm</h5>
             <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource4">
                 <Fields>
                     <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                     <asp:BoundField DataField="NoiSX" HeaderText="NoiSX" SortExpression="NoiSX" />
                     <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                     <asp:BoundField DataField="MieuTa" HeaderText="MieuTa" SortExpression="MieuTa" />
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                 </Fields>
             </asp:DetailsView>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [NoiSX], [Gia], [MieuTa], [img]) VALUES (@MaSP, @NoiSX, @Gia, @MieuTa, @img)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [NoiSX] = @NoiSX, [Gia] = @Gia, [MieuTa] = @MieuTa, [img] = @img WHERE [MaSP] = @MaSP">
                 <DeleteParameters>
                     <asp:Parameter Name="MaSP" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="MaSP" Type="String" />
                     <asp:Parameter Name="NoiSX" Type="String" />
                     <asp:Parameter Name="Gia" Type="Decimal" />
                     <asp:Parameter Name="MieuTa" Type="String" />
                     <asp:Parameter Name="img" Type="Object" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="NoiSX" Type="String" />
                     <asp:Parameter Name="Gia" Type="Decimal" />
                     <asp:Parameter Name="MieuTa" Type="String" />
                     <asp:Parameter Name="img" Type="Object" />
                     <asp:Parameter Name="MaSP" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
        </li> <li class="five">
            <h5>Loại Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                    <asp:BoundField DataField="SL" HeaderText="SL" SortExpression="SL" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [LoaiSanPham] ([MaSP], [TenSP], [SL]) VALUES (@MaSP, @TenSP, @SL)" SelectCommand="SELECT * FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenSP] = @TenSP, [SL] = @SL WHERE [MaSP] = @MaSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="SL" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="SL" Type="Int32" />
                    <asp:Parameter Name="MaSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
      
    </ol>
</asp:Content>