<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemektTariflerim.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style14 {
            width: 100%;
        }
        .auto-style17 {
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style16 {
            font-size: large;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style22 {
            color: #FFFFCC;
        }
        .auto-style21 {
            color: #333333;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" Width="450px">
    <ItemTemplate>
        <table class="auto-style14">
            <tr>
                <td class="auto-style17"><strong>
                    <!-- Formlar arası veri taşınırken ? kullanılırç--><a href="YemekDetay.aspx?YemekID=<%#Eval("YemekID") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style16" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Malzemeler :</strong>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style22" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Tarifi : </strong>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style22" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Eklenme Tarihi : </strong>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style21" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Puanı :</strong><asp:Label ID="Label7" runat="server" CssClass="auto-style21" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

