﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Alumno_lista.aspx.cs" Inherits="TP1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
            <asp:BoundField DataField="dni" HeaderText="dni" SortExpression="dni" />
            <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
            <asp:BoundField DataField="fecha_nacimiento" HeaderText="fecha_nacimiento" SortExpression="fecha_nacimiento" />
            <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
            <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
            <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
            <asp:BoundField DataField="provincia" HeaderText="provincia" SortExpression="provincia" />
            <asp:BoundField DataField="pais" HeaderText="pais" SortExpression="pais" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TP1ConnectionString %>" SelectCommand="SELECT * FROM [alumno]"></asp:SqlDataSource>
</asp:Content>
