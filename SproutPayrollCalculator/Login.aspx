<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SproutPayrollCalculator.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box login">
        <p><label for="username">Username </label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="username" data-bind="value: username"/></p>
        <p><label for="password">Password </label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="passwprd" data-bind="value: password" TextMode="Password"/></p>

        <p><asp:LinkButton CssClass ="asp-button button" ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click"/></p>
    </div>
</asp:Content>
