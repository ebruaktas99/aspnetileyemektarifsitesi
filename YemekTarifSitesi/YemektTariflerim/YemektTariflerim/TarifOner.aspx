<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemektTariflerim.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        width: 100%;
    }
    .auto-style15 {
        text-align: right;
    }
    .auto-style16 {
        text-align: center;
    }
    .auto-style17 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style14">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Tarif Adı :</strong></td>
        <td class="auto-style17">
            <asp:TextBox ID="txttarifadi" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>&nbsp;Malzemeler :&nbsp;</strong></td>
        <td>
            <asp:TextBox ID="txtmalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Yapılışı :</strong></td>
        <td>
            <asp:TextBox ID="txtyapilis" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Resim :</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Tarif Öneren :</strong></td>
        <td>
            <asp:TextBox ID="txtoneren" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Mail. Adresi :</strong></td>
        <td>
            <asp:TextBox ID="txtonerenmail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style16">
            <asp:Button ID="btntarifoner" runat="server" BackColor="#FF33CC" Text="Tarifini Öner" Width="150px" OnClick="btntarifoner_Click" />
        </td>
    </tr>
</table>
</asp:Content>
