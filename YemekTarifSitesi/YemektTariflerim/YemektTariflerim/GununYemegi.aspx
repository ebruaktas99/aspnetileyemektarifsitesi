<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemektTariflerim.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        width: 100%;
    }
    .auto-style15 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style15"><strong>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler : </strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Tarif :</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Image ID="Image1" runat="server" Height="61px" ImageUrl="~/Resimler/sufle.jpg" Width="162px" />
                    </td>
                </tr>
                <tr>
                    <td>Puanı :
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><em><strong>Tarihi :
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </strong></em></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</p>
</asp:Content>
