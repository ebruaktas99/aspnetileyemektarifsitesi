<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetayAdmin.aspx.cs" Inherits="YemektTariflerim.MesajDetayAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        text-align: right;
        color: #000000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style5">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>&nbsp;Mesaj Gönderen :&nbsp;</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Başlık :</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mail Adresi :</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mesaj İçerik :</strong></td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>
