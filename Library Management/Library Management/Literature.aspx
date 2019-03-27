<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Literature.aspx.cs" Inherits="Library_Management.Literature1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphCss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="server">
    <asp:MultiView ID="mvLiterature" runat="server">
        <asp:View ID="vLiteratureDefault" runat="server"></asp:View>
        <asp:View ID="vLiteratureBooks" runat="server"></asp:View>
        <asp:View ID="vLiteratureMagazines" runat="server"></asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphScript" runat="server">
</asp:Content>
