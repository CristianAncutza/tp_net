<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registracion.aspx.cs" Inherits="TP1.Registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div>
    <title>Registración de Usuario</title></div>


    <asp:Label ID="LblUsuario" runat="server" Text="Usuario:"></asp:Label><br />
    <asp:TextBox ID="TxtUsuario" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtUsuario" runat="server" ErrorMessage="Ingrese el usuario"></asp:RequiredFieldValidator>    
    <br />
    <asp:Label ID="LblPassword" runat="server" Text="Contraseña: "></asp:Label> <br />   
    <asp:TextBox ID="TxtPassword" runat="server" type="password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtPassword" runat="server" ErrorMessage="Ingrese la contraseña"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LblRepass" runat="server" Text="Reingreso de contraseña: "></asp:Label><br />
    <asp:TextBox ID="TxtRepass" runat="server" type="password" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TxtRepass" runat="server" ErrorMessage="Re ingrese la Contraseña"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TxtRepass" ControlToCompare="TxtPassword" runat="server" ErrorMessage="Las contraseñas no coinciden"></asp:CompareValidator>
    <br />
    <br />
    <asp:Button ID="BtnEnviar" runat="server" Text="Enviar" OnClick="BtnEnviar_Click" />
    <br />
    <br />
    <asp:Label ID="LblError" runat="server" Text=""></asp:Label>




</asp:Content>
