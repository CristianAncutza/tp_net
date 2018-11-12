﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Alumno_lista.aspx.cs" Inherits="TP1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

     <div class="panel-body">

    <div class="form-inline">

        <asp:Label ID="LblDni" runat="server" Text="DNI  "></asp:Label>
        <asp:TextBox ID="TxtDni" class="form-control  col-sm-2" runat="server" Type="number"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ForeColor="red" ControlToValidate="TxtDni" MinimumValue="1" MaximumValue="999999999" ErrorMessage=""></asp:RangeValidator>
        
            &nbsp; &nbsp;
        <asp:Label ID="LblApellido" runat="server" Text="Apellido  "></asp:Label>
        <asp:TextBox ID="TxtApellido" class="form-control col-sm-2" runat="server" MaxLength="50"></asp:TextBox>
            &nbsp; &nbsp;
        <asp:Button ID="BtnBuscar" class="btn btn-outline btn-primary " runat="server" Text="Buscar" OnClick="BtnBuscar_Click" />
            <asp:LinkButton ID="LnkAlta" class="btn btn-outline btn-primary" runat="server" OnClick="LnkAlta_Click">Dar de Alta Alumno</asp:LinkButton>

    </div>

    <div class="table table-responsive">
        <asp:GridView ID="gvAlumnos" CssClass="table table-bordered table-hover table-striped" runat="server"
            onrowcommand="gvAlumnos_RowCommand"
            OnRowEditing="gvAlumnos_edit" OnRowDeleting="gvAlumnos_delete" DataKeyNames="id" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                                                                    <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />

            <Columns>

            </Columns>


            

        </asp:GridView>  
            </div>
            </div>

</asp:Content>
