<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategorileradmin.aspx.cs" Inherits="YemektTariflerim.Kategorileradmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        .auto-style15 {
            font-weight: bold;
        }
        .auto-style16 {
            color: #000000;
        }
        .auto-style17 {
            background-color: #999999;
            width: 30px;
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
                    
                <td class="auto-style17"> <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Font-Size="20px" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/></td>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
    </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">

        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="448px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style8"><strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>' CssClass="auto-style16"></asp:Label>
                            </strong></td>
                        <td class="auto-style9">
                        <a href="Kategorileradmin.aspx?KategoriID=<%#Eval("KategoriID")%>&islem=sil"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style9">
                         <a href ="KategoriDuzenle.aspx?KategoriID=<%#Eval("KategoriID")%>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Resimler/update.png" Width="30px" /></a> 
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
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">KATEGORİ AD :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">KATEGORİ İKON :</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btneklekategori" runat="server" CssClass="auto-style15" Text="EKLE" Width="100px" OnClick="btneklekategori_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
