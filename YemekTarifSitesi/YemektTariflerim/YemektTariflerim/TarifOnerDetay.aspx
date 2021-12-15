<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemektTariflerim.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style15 {
            width: 100%;
        }
        .auto-style19 {
            text-align: right;
            color: #000000;
        }
    .auto-style20 {
        text-align: left;
    }
    .auto-style21 {
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style15">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Label ID="Label7" runat="server" Text="Tarif Adı :"></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Label ID="Label8" runat="server" Text="Tarif Malzemeler :"></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Label ID="Label9" runat="server" Text="Tarif Yapılış : "></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Tarif Resim :</strong></td>
                <td class="auto-style20">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>&nbsp; Tarif Öneren :&nbsp;</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Tarif Öneren Mail :</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Kategori :</strong></td>
                <td class="auto-style20">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="197px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" OnClick="Button1_Click" Text="Tarif Onayla" Width="202px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
