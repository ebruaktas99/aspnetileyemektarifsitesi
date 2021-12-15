<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemektTariflerim.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            color: #000000;
        }
        .auto-style15 {
            margin-left: 3px;
        }
        .auto-style16 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style14">
        <div class="auto-style16">
        <strong>HAKKIMIZDA</div>
        <div class="auto-style16">
            <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        </div>
        </strong>

    </p>
    <asp:Image ID="Image1" runat="server" CssClass="auto-style15" Height="152px" ImageUrl="~/Resimler/team.jpg" Width="447px" />

</asp:Content>
