<%@ Page Title="Payroll Calculator" Language="C#" MasterPageFile="~/SproutPayroll.Master" AutoEventWireup="true" CodeBehind="PayrollCalculator.aspx.cs" Inherits="SproutPayrollCalculator.PayrollCalculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="whole">
      <h1>Payroll Calculator</h1>
      <div class='employeeName'>
            <p><label for="firstName">First Name</label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="firstName" data-bind="value: firstName" /></p>
            <p><label for="middleName">Middle Name</label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="middleName" data-bind="value: middleName" /></p>
            <p><label for="lastName">Last Name</label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="lastName" data-bind="value: lastName" /></p>
      </div>
            <p><label for="basicSalary">Basic Salary</label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="basicSalary" data-bind="value: basicSalary" TextMode="Number"/></p>
            <p><label for="salaryPeriod">Salary Period</label><asp:DropDownList CssClass ="asp-dropdown" runat="server" ID="salaryPeriod" class="salaryPeriod" data-bind= "options: $root.Period, value: salaryPeriod, optionsText: 'period'"/></p>
            <p><label for="employeeStatus">Status</label><asp:DropDownList CssClass ="asp-dropdown" runat="server" ID="employeeStatus" class = "employeeStatus" data-bind= "options: $root.Status, value: employeeStatus, optionsText: 'status'"/></p>
            <p><label for="workSector">Sector</label><asp:DropDownList CssClass ="asp-dropdown" runat="server" ID="workSector" class = "workSector" data-bind= "options: $root.Sector, value: workSector, optionsText: 'sector'"/></p>

            <p><asp:LinkButton CssClass ="asp-button" ID="btnCompute" runat="server" Text="Compute" OnClick="btnCompute_Click"/></p>
    </div>
    <script type="text/javascript" src="<%=ResolveUrl("~/") %>Assets/js/ViewModel.js"></script>
</asp:Content>
