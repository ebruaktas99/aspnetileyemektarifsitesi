<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumlarAdmin.aspx.cs" Inherits="YemektTariflerim.YorumlarAdmin" %>
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
        }
        .auto-style8 {
        text-align: left;
        width: 263px;
    }
        .auto-style16 {
            color: #000000;
        }
        .auto-style9 {
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
                        <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>ONAYLANAN YORUM LİSTESİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="auto-style16"></asp:Label>
                            </strong></td>
                        <td class="auto-style9">
                         <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style9">
                        <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />

    <asp:Panel ID="Panel3" runat="server" style="margin-top:15px;">
        <div>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="Button3" runat="server" Font-Size="20px" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                        <td class="auto-style17">
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Font-Size="20px" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                        </td>
                        <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>ONAYLANMAYAN YORUM LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
          <asp:DataList ID="DataList2" runat="server"  Width="448px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style8"><strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="auto-style16"></asp:Label>
                            </strong></td>
                        <td class="auto-style9">
                         <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style9">
                        <a href ="YorumDetayAdmin.aspx?YorumID=<%#Eval("YorumID")%>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
</asp:Content>

