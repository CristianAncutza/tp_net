<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Alumno_alta.aspx.cs" Inherits="TP1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div><h3>ALTA DE ALUMNO</h3></div><br />

    <div class="row">

        <div class="col col-4">
            <asp:Label ID="LblNombre" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="TxtNombre" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red" ControlToValidate="TxtNombre" runat="server" ErrorMessage="* Ingrese el nombre"></asp:RequiredFieldValidator>
        </div>

        <div class="col col-4">
            <asp:Label ID="LblApellido" runat="server" Text="Apellido:"></asp:Label>
            <asp:TextBox ID="TxtApellido" CssClass="form-control"  runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red" ControlToValidate="TxtApellido" runat="server" ErrorMessage="* Ingrese el apellido"></asp:RequiredFieldValidator>
        </div> 
        
        <div class="col col-4">  
            <asp:Label ID="LblDni" runat="server" Text="DNI:"></asp:Label>
            <asp:TextBox ID="TxtDni" CssClass="form-control"  runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red" ControlToValidate="TxtDni" runat="server" ErrorMessage="* Ingrese el DNI"></asp:RequiredFieldValidator>
        </div>

        <div class="col col-4">
            <asp:Label ID="LblSexo" runat="server" Text="Sexo: "></asp:Label>
            <asp:DropDownList ID="DdlSexo" CssClass="form-control" runat="server">
                <asp:ListItem Selected="True" Value="0">Elija un valor</asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Femenino</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="red" ControlToValidate="DdlSexo" runat="server" ErrorMessage="* Ingrese el Sexo"></asp:RequiredFieldValidator>
        </div>
    
        <div class="col col-4">
            <asp:Label ID="LblFechanac" runat="server" Text="Fecha de nacimiento: "></asp:Label>
            <asp:TextBox ID="TxtFecnac"  CssClass="form-control"  runat="server"  TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="red" ControlToValidate="TxtFecnac" runat="server" ErrorMessage="* Ingrese la fec. de nacimiento"></asp:RequiredFieldValidator>
        </div>
 
        <div class="col col-4">
            <asp:Label ID="LblTelefono" runat="server" Text="Telefono: "></asp:Label>
            <asp:TextBox ID="TxtTelefono" CssClass="form-control"  runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="red" ControlToValidate="TxtTelefono" runat="server" ErrorMessage="* Ingrese el Telefono"></asp:RequiredFieldValidator>
        </div>
    
        <div class="col col-4">
            <asp:Label ID="LblDireccion" runat="server" Text="Dirección: "></asp:Label>
            <asp:TextBox ID="TxtDireccion" CssClass="form-control"  runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="red" ControlToValidate="TxtDireccion" runat="server" ErrorMessage="* Ingrese la dirección"></asp:RequiredFieldValidator>
        </div>

        <div class="col col-4">
            <asp:Label ID="LblPais" runat="server" Text="Pais: "></asp:Label>
            <asp:DropDownList CssClass="form-control"  ID="DdlPais" runat="server">
                <asp:ListItem Selected="True" Value="0">Elija un valor</asp:ListItem>
                <asp:ListItem>Argentina</asp:ListItem>
                <asp:ListItem>Paraguay</asp:ListItem>
                <asp:ListItem>Uruguay</asp:ListItem>
                <asp:ListItem>Chile</asp:ListItem>
                <asp:ListItem>Bolivia</asp:ListItem>
                <asp:ListItem>Brasil</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="red" ControlToValidate="DdlPais" runat="server" ErrorMessage="* Ingrese el pais"></asp:RequiredFieldValidator>
        </div>

        <div class="col col-4">
            <asp:Label ID="LblProvincia" runat="server" Text="Provincia: "></asp:Label>
            <asp:DropDownList CssClass="form-control"   ID="DdlProvincia" runat="server">
                <asp:ListItem Value="0">Elija un valor</asp:ListItem>
                <asp:ListItem>Buenos Aires</asp:ListItem>
                <asp:ListItem>Misiones</asp:ListItem>
                <asp:ListItem>Mendoza</asp:ListItem>
                <asp:ListItem>San Luis</asp:ListItem>
                <asp:ListItem>Catamarca</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="red" ControlToValidate="DdlProvincia" runat="server" ErrorMessage="* Ingrese la provincia"></asp:RequiredFieldValidator>
        </div>
        
        <div class="col col-4">
            <asp:Label ID="LblCiudad" runat="server" Text="Ciudad: "></asp:Label>
            <asp:DropDownList CssClass="form-control"  ID="DdlCiudad" runat="server">
                <asp:ListItem Selected="True" Value="0">Elija un valor</asp:ListItem>
                <asp:ListItem>Moron</asp:ListItem>
                <asp:ListItem>Castelar</asp:ListItem>
                <asp:ListItem>Ituzaingo</asp:ListItem>
                <asp:ListItem>Merlo</asp:ListItem>
                <asp:ListItem>Padua</asp:ListItem>
                <asp:ListItem>Moreno</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="red" ControlToValidate="DdlCiudad" runat="server" ErrorMessage="* Ingrese la ciudad"></asp:RequiredFieldValidator>
        </div>
    
        <div class="col col-4">
            <asp:Label ID="LblMaterias" for="TxtMaterias" runat="server" Text="Materias aprobadas: "></asp:Label>
            <asp:TextBox ID="TxtMaterias" CssClass="form-control"  runat="server" Type="number"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ForeColor="red" ControlToValidate="TxtMaterias" MinimumValue="1" MaximumValue="1000" ErrorMessage="* Ingrese un valor entre 1 y 1000"></asp:RangeValidator>
        </div>


    </div>
        <asp:Button ID="BtnEnviar" CssClass="btn-primary" runat="server" Text="Enviar" />
        <a href="javascript:history.go(-1)">Cancelar</a>
    <asp:Label ID="LblError" ForeColor="red" runat="server" Text=""></asp:Label>
</asp:Content>
