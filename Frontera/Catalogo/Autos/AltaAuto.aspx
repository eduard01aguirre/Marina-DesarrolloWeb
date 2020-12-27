﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AltaAuto.aspx.cs" Inherits="Frontera.Catalogo.Autos.AltaAuto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        <div class="row">
			<h3>Alta auto</h3>
			<hr />
		</div>
		<div class="row form-group">
			<label for= "<%=txtMatricula.ClientID %>">Matrícula:</label>
				<asp:TextBox ID="txtMatricula" runat="server" CssClass="form-control" placeholder="XXX-0000"></asp:TextBox>
				<div style="position:absolute;top:0;left:0;">
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Guardar" runat="server" CssClass="text-danger" ControlToValidate="txtMatricula"
				ErrorMessage="Matricula del auto requerida"></asp:RequiredFieldValidator>
				</div>
				<div style="position:absolute;top:0;left:0;">
				<asp:RegularExpressionValidator ID="RequiredExpressionValidator1" runat="server" CssClass="text-danger" ControlToValidate="txtMatricula"
				ValidationExpression="^[A-Z]{3}-[0-9]{4}$"
				ErrorMessage="El formato de la matricula es XXX-0000(Mayusculas)"></asp:RegularExpressionValidator>
				</div>
		</div>
		
		<div class="row form-group">
			<label for="<%=txtMarca.ClientID %>">Marca:</label>
			<asp:TextBox ID="txtMarca" runat="server" CssClass="form-control" placeholder="Marca"></asp:TextBox>
			<div style="position:absolute;top:0;left:0;">
				<asp:RequiredFieldValidator ID="rfvTxtMarca" ValidationGroup="Guardar" runat="server" CssClass="text-danger" ControlToValidate="txtMarca"
				ErrorMessage="Marca del auto requerido"></asp:RequiredFieldValidator>
				</div>
		</div>
		<div class="row form-group">
			<label for="<%=txtAnio.ClientID %>">Año:</label>
			<asp:TextBox ID="txtAnio" runat="server" CssClass="form-control" placeholder="0000"></asp:TextBox>
			<div style="position:absolute;top:0;left:0;">
				<asp:RequiredFieldValidator ID="revTxtAnio" ValidationGroup="Guardar" runat="server" CssClass="text-danger" ControlToValidate="txtAnio"
				ErrorMessage="Año del modelo del auto requerida"></asp:RequiredFieldValidator>
				</div>
				<div style="position:absolute;top:0;left:0;">
				<asp:RegularExpressionValidator ID="rfvTxtAnio" runat="server" CssClass="text-danger" ControlToValidate="txtAnio"
				ValidationExpression="^{4}$"
				ErrorMessage="Debe contener 4 digitos"></asp:RegularExpressionValidator>
				</div>
		</div>
		
		<div class="row form-inline">
            <div class="colo-md-12">
                <label>Selecciona Foto:</label>
                <input type="file" class="btn btn-default btn-file" runat="server" id="SubeImagen" style="display: inline-block;" />
                <asp:Button ID="btnSubeImagen" runat="server" Text="Subir Imagen" 
					CssClass="btn btn-primary btn-xs" OnClick="btnSubeImagen_Click" />
            </div>
        </div>
        <div class="row form-group">
            <div class="col-md-3" style="text-align: center;">
                <label for="<%=SubeImagen.ClientID %>">Foto:</label>
                <asp:Image ID="imgFotoAuto" Width="200" Height="200" runat="server" />
                <label id="lblUrlFoto" runat="server"></label>
            </div>
        </div>
        <div class="row form-group">
            <asp:Button ID="btnGuardar" ValidationGroup="Guardar" runat="server" 
				Text="Guardar" CssClass="btn btn-success" 
				Visible=True OnClick="btnGuardar_Click" />
        </div>
    </div>
</asp:Content>
