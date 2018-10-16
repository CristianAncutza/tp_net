<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Alumno_editar.aspx.cs" Inherits="TP1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     Nombre<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Apellido
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    Dni<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    Sexo<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
    Fecha de nacimiento<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <br />
    Telefono<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <br />
    Direccion<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    Ciudad<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br />
    Provincia<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br />
    Pais<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <br />
</asp:Content>
