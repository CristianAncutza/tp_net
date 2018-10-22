<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TP1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div> <h3>Login de Usuario</h3></div><br /><br />

    <div class="container">
        <div class="form-group">
            <div class="col-sm-7">
                <asp:Label ID="LblUsuario" runat="server" Text="Usuario: "></asp:Label>
                <asp:TextBox ID="TxtUsuario" runat="server" Class="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red"  ControlToValidate="TxtUsuario" runat="server" ErrorMessage="* Ingrese el Usuario"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-7">
                <asp:Label ID="LblPassword" runat="server" Text="Contraseña: "></asp:Label>             
                <asp:TextBox ID="TxtPassword" runat="server" type="password" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red"  ControlToValidate="TxtPassword" runat="server" ErrorMessage="* Ingrese la contraseña"></asp:RequiredFieldValidator>
            </div>
        </div>
        
        <div class="form-group">
            <asp:Label ID="LblError" ForeColor="red" runat="server" Text=""></asp:Label>
        </div>
        <asp:Button ID="BtnEnviar" runat="server" Text="Enviar" OnClick="Button1_Click" />
    </div>

    
</asp:Content>
