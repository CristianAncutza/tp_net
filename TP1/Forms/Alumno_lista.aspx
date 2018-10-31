<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Alumno_lista.aspx.cs" Inherits="TP1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

        <div style="float:right">
            <asp:LinkButton ID="LnkAlta" runat="server" OnClick="LnkAlta_Click">Dar de Alta Alumno</asp:LinkButton>
        </div>
    <div class="form-group">
        <asp:Label ID="LblDni" runat="server" Text="DNI: "></asp:Label>
        <asp:TextBox ID="TxtDni" runat="server"></asp:TextBox>

        <asp:Label ID="LblApellido" runat="server" Text="Apellido"></asp:Label>
        <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>

        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" />
    </div>

    <div class="form-group">
        <asp:GridView ID="gvAlumnos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>  
    </div>
</asp:Content>
