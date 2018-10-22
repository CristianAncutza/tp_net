<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TP1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <title>Login de Usuario</title><br /><br />

    
    <asp:Label ID="LblUsuario" runat="server" Text="Usuario: "></asp:Label><br />
    <asp:TextBox ID="TxtUsuario" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtUsuario" runat="server" ErrorMessage="Ingrese el Usuario"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LblPassword" runat="server" Text="Contraseña: "></asp:Label><br />    
    <asp:TextBox ID="TxtPassword" runat="server" type="password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtPassword" runat="server" ErrorMessage="Ingrese la contraseña"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LblError" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <asp:Button ID="BtnEnviar" runat="server" Text="Enviar" OnClick="Button1_Click" />
</asp:Content>
