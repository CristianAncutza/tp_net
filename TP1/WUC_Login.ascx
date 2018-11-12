<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUC_Login.ascx.cs" Inherits="TP1.WUC_Login" %>

       <div class="form-group">
            <div class="col-sm-7">
                <asp:Label ID="LblUsuario" runat="server" Text="Usuario: "></asp:Label>
                <asp:TextBox ID="TxtUsuario" runat="server" Class="form-control" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red"  ControlToValidate="TxtUsuario" runat="server" ErrorMessage="* Ingrese el Usuario"></asp:RequiredFieldValidator>
            </div>
        </div>
