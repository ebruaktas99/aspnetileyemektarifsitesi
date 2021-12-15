<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenleAdmin.aspx.cs" Inherits="YemektTariflerim.YemekDuzenleAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        text-align: right;
        color: #000000;
    }
    .auto-style8 {
        text-align: left;
    }
    .auto-style9 {
        margin-left: 0px;
        font-weight: bold;
        background-color: #6699FF;
    }
    .auto-style10 {
        font-weight: bold;
        background-color: #FF33CC;
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
        <td class="auto-style7"><strong>Yemek Ad :</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Malzemeler :</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Tarif :&quot;</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Kategori :</strong></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">
            <strong>
            <asp:Button ID="yemekguncelle" runat="server" CssClass="auto-style9" OnClick="yemekguncelle_Click" Text="Güncelle" Width="250px" />
            </strong>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">
            <strong>
            <asp:Button ID="gnnyemegiayarla" runat="server" CssClass="auto-style10" OnClick="gnnyemegiayarla_Click" Text="Günün Yemeği Olarak Ayarla" Width="247px" />
            </strong>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
