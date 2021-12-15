<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetayAdmin.aspx.cs" Inherits="YemektTariflerim.YorumDetayAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: right;
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
            <td class="auto-style8"><strong>Ad Soyad :&nbsp;</strong></td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" Width="251px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Mail Adresi :</strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Width="251px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>İçerik :</strong></td>
            <td>
                <asp:TextBox ID="txtIcerik" runat="server" Height="100px" TextMode="MultiLine" Width="251px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek :</strong></td>
            <td>
                <asp:TextBox ID="txtYemek" runat="server" Width="251px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="YorumOnayla" runat="server" Text="Yorum Onayla" Width="101px" OnClick="YorumOnayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
