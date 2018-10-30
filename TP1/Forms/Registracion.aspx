<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registracion.aspx.cs" Inherits="TP1.Registracion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div> <h3>Registración de Usuario</h3></div><br /><br />

    <div class="container">

        <div "form-group">
             <div class="col-sm-7">
                <asp:Label ID="LblUsuario" runat="server" Text="Usuario:"></asp:Label><br />
                <asp:TextBox ID="TxtUsuario" runat="server"  Class="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red"  ControlToValidate="TxtUsuario" runat="server" ErrorMessage="* Ingrese el usuario"></asp:RequiredFieldValidator>    
             </div>
        </div>
        
        <div class="form-group">
            <div class="col-sm-7">
                <asp:Label ID="LblPassword" runat="server" Text="Contraseña: "></asp:Label> <br />   
                <asp:TextBox ID="TxtPassword" runat="server" type="password" Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red"  ControlToValidate="TxtPassword" runat="server" ErrorMessage="* Ingrese la contraseña"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-7">
                <asp:Label ID="LblRepass" runat="server" Text="Reingreso de contraseña: "></asp:Label><br />
                <asp:TextBox ID="TxtRepass" runat="server" type="password"  Class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red"  ControlToValidate="TxtRepass" runat="server" ErrorMessage="* Re ingrese la Contraseña"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ForeColor="red"  ControlToValidate="TxtRepass" ControlToCompare="TxtPassword" runat="server" ErrorMessage="* Las contraseñas no coinciden"></asp:CompareValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label ID="LblError" ForeColor="red" runat="server" Text=""></asp:Label>
        </div>
<asp:Button ID="BtnEnviar"  class="btn btn-primary"  runat="server" Text="Registrarse" OnClick="BtnEnviar_Click" ForeColor="#333333" />

    </div>
       

</asp:Content>
