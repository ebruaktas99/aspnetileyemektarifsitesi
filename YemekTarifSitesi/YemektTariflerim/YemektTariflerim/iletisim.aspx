<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemektTariflerim.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        width: 100%;
    }
    .auto-style15 {
        text-align: right;
    }
    .auto-style16 {
        margin-left: 120px;
    }
    .auto-style17 {
        margin-left: 200px;
    }
    .auto-style18 {
        background-color: #FFFFFF;
    }
    .auto-style19 {
        color: #000000;
    }
    .auto-style20 {
        text-align: right;
        color: #000000;
    }
    .auto-style21 {
        color: #000000;
        background-color: #FFFFFF;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style14">
    <tr>
        <td class="auto-style18" colspan="2">&nbsp;<strong><span class="auto-style21">MESAJ PANELİ&nbsp;</span></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;<span class="auto-style19">&nbsp;Ad Soyad</span> <span class="auto-style19">:</span></td>
        <td>
            <asp:TextBox ID="txtadsoyad" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;<span class="auto-style19"> Mail Adresiniz&nbsp;:</span></td>
        <td>
            <asp:TextBox ID="txtmail" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;&nbsp; <span class="auto-style19">Konu :</span></td>
        <td class="auto-style16">
            <asp:TextBox ID="txtkonu" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style20">Mesaj :</td>
        <td class="auto-style17">
            <asp:TextBox ID="txtmesaj" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td class="auto-style17">
            <asp:Button ID="Button1" runat="server" CssClass="fb8" Text="Gönder" Width="127px" />
        </td>
    </tr>
</table>
</asp:Content>
