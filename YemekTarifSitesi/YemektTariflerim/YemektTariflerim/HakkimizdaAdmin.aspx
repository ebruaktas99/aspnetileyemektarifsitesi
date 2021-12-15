<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemektTariflerim.HakkimizdaAdmin" %>
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
        .auto-style18 {
        text-align: center;
    }
    .auto-style19 {
        font-weight: bold;
    }
    .auto-style20 {
        font-size: medium;
            color: #000000;
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
                        <td class="auto-style10"><strong>HAKKIMIZDA</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style5">
            <tr>
                <td><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style20" Height="200px" TextMode="MultiLine" Width="434px" Font-Bold="True" ForeColor="Black"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style19" Text="Güncelle" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
