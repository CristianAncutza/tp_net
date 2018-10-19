<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TP1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    Usuario<br />
    <asp:TextBox ID="TextBoxUsuario" runat="server" ></asp:TextBox>
    <br />
    <br />
    Contraseña<br />
    <asp:TextBox ID="TextBoxPassword" runat="server" type="password"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" />
</asp:Content>
