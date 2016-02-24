<%@ Page Title="Liên Hệ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Trang liên hệ của bạn.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện Thoại:</h3>
        </header>
        <p>
            <span class="label">Hotline:</span>
            <span>01697273833</span>
        </p>
        <p>
           
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ Trợ:</span>
            <span><a href="mailto:Support@example.com">Hotro@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@gmail.com</a></span>
        </p>
        <p>
            <span class="label">CSKH:</span>
            <span><a href="mailto:General@example.com">CSKH@gmail.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            Nguyên Xá, Minh Khai-Từ Liêm-Hà Nội
        </p>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7446.976096058052!2d105.73522477242662!3d21.053160956628485!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454f9de2328cf%3A0xc5685fbea9808d8e!2zTmd1ecOqbiBYw6EsIE1pbmggS2hhaSwgVOG7qyBMacOqbSwgSMOgIE7hu5lpLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1456214398065" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>
</asp:Content>