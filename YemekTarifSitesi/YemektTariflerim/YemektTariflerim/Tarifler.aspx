<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemektTariflerim.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        .auto-style12 {
            background-color: #999999;
            width: 31px;
        }
        .auto-style17 {
            background-color: #999999;
            width: 30px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style10 {
            background-color: #999999;
            color: #000000;
            text-align: center;
        }
        .auto-style8 {
        text-align: left;
        width: 230px;
    }
        .auto-style16 {
            color: #000000;
        }
        .auto-style18 {
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <div>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="Button1" runat="server" Font-Size="20px" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                        <td class="auto-style17">
                            <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Font-Size="20px" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/>
                        </td>
                        <td class="auto-style10"> <strong>ONAYSIZ TARİF LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server"  Width="448px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style8"><strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>' CssClass="auto-style16"></asp:Label>
                            </strong></td>
                        <td class="auto-style18">
                           <a href="TarifOnerDetay.aspx?TarifID=<%#Eval("TarifID")%>"><asp:Image ID="Image2" runat="server" Height="34px" ImageUrl="~/Resimler/oneri.png" Width="34px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server"  style="margin-top:15px;">
        <div>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="Button3" runat="server" Font-Size="20px" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                        <td class="auto-style17">
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Font-Size="20px" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                        </td>
                        <td class="auto-style10"> <strong>ONAYLI TARİF LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server"><asp:DataList ID="DataList2" runat="server"  Width="448px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style8"><strong>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>' CssClass="auto-style16"></asp:Label>
                            </strong></td>
                        <td class="auto-style18">
                           <a href="TarifOnerDetay.aspx?TarifID=<%#Eval("TarifID")%>"><asp:Image ID="Image3" runat="server" Height="34px" ImageUrl="~/Resimler/oneri.png" Width="34px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList></asp:Panel>
    <br />

</asp:Content>
