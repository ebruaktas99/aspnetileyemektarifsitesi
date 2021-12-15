<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajlarAdmin.aspx.cs" Inherits="YemektTariflerim.MesajlarAdmin" %>
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
        width: 230px;
    }
        .auto-style16 {
            color: #000000;
        }
        .auto-style18 {
        text-align: right;
    }
        .auto-style19 {
            color: #006600;
            font-size: xx-large;
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
                        <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong> MESAJ LİSTESİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>' CssClass="auto-style16"></asp:Label>
                            </strong></td>
                        <td class="auto-style18">
             <em><a href="MesajDetayAdmin.aspx?MesajID= <%#Eval("MesajID")%>"><strong><asp:Label ID="Label2" runat="server" CssClass="auto-style19" Font-Size="20pt" Text=" ✓" Width="30px"></asp:Label>
                            </em></strong></a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
</asp:Content>
