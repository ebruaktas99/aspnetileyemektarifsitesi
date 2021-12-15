<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemeklerAdmin.aspx.cs" Inherits="YemektTariflerim.YemeklerAdmin" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
        text-align: left;
        width: 263px;
    }
    .auto-style9 {
        text-align: right;
    }
        .auto-style10 {
            background-color: #999999;
            color: #000000;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            background-color: #999999;
            width: 31px;
        }
        .auto-style13 {
            background-color: #999999;
            width: 29px;
        }
        .auto-style14 {
            background-color: #999999;
        }
        .auto-style16 {
            color: #000000;
        }
        .auto-style17 {
            background-color: #999999;
            width: 30px;
        }
        .auto-style18 {
            color: #000000;
            text-align: right;
        }
        .auto-style19 {
            margin-left: 160px;
        }
        .auto-style20 {
            height: 29px;
        }
        .auto-style15 {
            font-weight: bold;
        }
        .auto-style21 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <asp:Panel ID="Panel1" runat="server">
        <div>
        <table class="auto-style5">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" Font-Size="20px" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                    
                <td class="auto-style17"> <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Font-Size="20px" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/></td>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">

        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style8"><strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="auto-style16"></asp:Label>
                            </strong></td>
                        <td class="auto-style9">
                        <a href="Yemekleradmin.aspx?YemekID=<%#Eval("YemekID")%>&islem=sil"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style9">
                         <a href ="YemekDuzenleAdmin.aspx?YemekID=<%#Eval("YemekID")%>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" Width="30px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style14" style="margin-top:15px;">
        <div>
        <table class="auto-style5">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button3" runat="server" Font-Size="20px" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Font-Size="20px" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YEMEK EKLEME</strong></td>
            </tr>
        </table>
    </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;&nbsp; Yemek Adı :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Malzemeler:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Yemek Tarifi :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Kategori :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="270px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="2"><strong>
                    <asp:Button ID="btnekleyemek" runat="server" CssClass="auto-style15" OnClick="btnekleyemek_Click" Text="EKLE" Width="95px" />
                    </strong></td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
