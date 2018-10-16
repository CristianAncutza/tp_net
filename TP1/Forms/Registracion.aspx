<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registracion.aspx.cs" Inherits="TP1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    Usuario<br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Contraseña<br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    Reingresar contraseña<br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Enviar" />
</asp:Content>
