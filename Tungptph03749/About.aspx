<%@ Page Title="Giới Thiệu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Trang mô tả ứng dụng của bạn.</h2>
    </hgroup>

    <article>
        <p>        
            Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide additional information.
        </p>
    </article>

    <aside>
        <h3>Tiêu đề bên</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Trang Chủ</a></li>
            <li><a runat="server" href="~/About.aspx">Giới Thiệu</a></li>
            <li><a runat="server" href="~/Contact.aspx">Liên Lạc</a></li>
        </ul>
    </aside>
</asp:Content>