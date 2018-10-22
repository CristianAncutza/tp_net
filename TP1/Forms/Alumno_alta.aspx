<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Alumno_alta.aspx.cs" Inherits="TP1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div>ALTA DE ALUMNO</div><br /><br />

    <asp:Label ID="LblNombre" runat="server" Text="Nombre:"></asp:Label><br />
    <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtNombre" runat="server" ErrorMessage="Ingrese el nombre"></asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="LblApellido" runat="server" Text="Apellido:"></asp:Label><br />
    <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtApellido" runat="server" ErrorMessage="Ingrese el apellido"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LblDni" runat="server" Text="DNI:"></asp:Label><br />
    <asp:TextBox ID="TxtDni" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TxtDni" runat="server" ErrorMessage="Ingrese el DNI"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LblSexo" runat="server" Text="Sexo: "></asp:Label><br />
    <asp:DropDownList ID="DdlSexo" runat="server"></asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="DdlSexo" runat="server" ErrorMessage="Ingrese el Sexo"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LblFechanac" runat="server" Text="Fecha de nacimiento: "></asp:Label><br />
    <asp:TextBox ID="TxtFecnac" runat="server"  TextMode="Date"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TxtFecnac" runat="server" ErrorMessage="Ingrese la fecha de nacimiento"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LblTelefono" runat="server" Text="Telefono: "></asp:Label><br />
    <asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TxtTelefono" runat="server" ErrorMessage="Ingrese el Telefono"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LblDireccion" runat="server" Text="Dirección: "></asp:Label><br />
    <asp:TextBox ID="TxtDireccion" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TxtDireccion" runat="server" ErrorMessage="Ingrese la dirección"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LblCiudad" runat="server" Text="Ciudad: "></asp:Label><br />
    <asp:TextBox ID="TxtCiudad" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LblProvincia" runat="server" Text="Provincia: "></asp:Label><br />
    <asp:TextBox ID="TxtProvincia" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LblPais" runat="server" Text="Pais: "></asp:Label><br />
    <asp:TextBox ID="TxtPais" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LblMaterias" runat="server" Text="Cantidad de materias aprobadas: "></asp:Label><br />
    <asp:TextBox ID="TxtMaterias" runat="server" Type="number"></asp:TextBox>
        <br />
    <br />

    <asp:Button ID="BtnEnviar" runat="server" Text="Enviar" />
    <br />
</asp:Content>
