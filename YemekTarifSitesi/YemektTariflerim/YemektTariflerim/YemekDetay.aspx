<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemektTariflerim.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        font-size: x-large;
            background-color: #CCFFFF;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            font-size: large;
        }
        .auto-style17 {
            font-size: small;
        }
        .auto-style18 {
            background-color: #FFFF00;
        }
    .auto-style19 {
        text-align: right;
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
    <strong>
<asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style15">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style16" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin; border-color: #000000">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style17" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</strong>

    <br /> 

    <div class="auto-style18"> YORUM YAPMA PANELİ </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style15">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Label ID="Label7" runat="server" Text="Ad Soyad :"></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Label ID="Label8" runat="server" Text="Mail :"></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Label ID="Label9" runat="server" Text="Yorumunuz : "></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style21" OnClick="Button1_Click" Text="Yorum Yap" Width="202px" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>

</asp:Content>
