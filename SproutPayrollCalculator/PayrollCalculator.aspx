<%@ Page Title="Payroll Calculator" Language="C#" MasterPageFile="~/SproutPayroll.Master" AutoEventWireup="true" CodeBehind="PayrollCalculator.aspx.cs" Inherits="SproutPayrollCalculator.PayrollCalculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>Payroll Calculator</h1>
        <section id = "calculator" class = "demo">
            <p><label for="firstName">First Name </label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="firstName" data-bind="value: firstName"/></p>
            <p><label for="middleName">Middle Name </label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="middleName" data-bind="value: middleName"/></p>
            <p><label for="lastName">Last Name </label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="lastName" data-bind="value: lastName"/></p>

            <p><label for="basicSalary">Basic Salary</label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="basicSalary" data-bind="value: basicSalary" TextMode="Number"/></p>
            <p><label for="salaryPeriod">Salary Period</label><asp:DropDownList CssClass ="asp-dropdown" runat="server" ID="salaryPeriod" class="salaryPeriod" data-bind= "options: $root.Period, value: salaryPeriod, optionsText: 'period'"/></p>
            <p><label for="employeeStatus">Status</label><asp:DropDownList CssClass ="asp-dropdown" runat="server" ID="employeeStatus" class = "employeeStatus" data-bind= "options: $root.Status, value: employeeStatus, optionsText: 'status'"/></p>
            <p><label for="workSector">Sector</label><asp:DropDownList CssClass ="asp-dropdown" runat="server" ID="workSector" class = "workSector" data-bind= "options: $root.Sector, value: workSector, optionsText: 'sector'"/></p>

            <div class = "viewMore">
              <input id="toggle" type="checkbox">
              <label for="toggle"><u>View more<i class="fa fa-caret-down" aria-hidden="true"></i></u></label>
              <div id="expand">
                <div class="expandLeft">
                    <label for="overtimePay">Overtime pay</label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="overtimePay" data-bind="validate: overtimePay" TextMode="Number"/>
                    <label for="nightDiff">Night differential </label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="nightDiff" data-bind="validate: nightDiff" TextMode="Number"/>
                    <label for="holidayPay">Holiday pay </label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="holidayPay" data-bind="validate: holidayPay" TextMode="Number"/>
                </div>
                <div class="expandRight">
                    <label for="hmo">HMO </label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="hmo" data-bind="validate: healthMaintenance" TextMode="Number"/>
                    <label for="absent">Absent </label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="absent" data-bind="validate: absences" TextMode="Number"/>
                    <label for="tardiness">Tardiness </label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="tardiness" data-bind="validate: tardiness" TextMode="Number"/>
                    <label for="undertime">Undertime</label><asp:TextBox CssClass ="asp-textbox" runat="server" ID="undertime" data-bind="validate: undertime" TextMode="Number"/>
                </div>
              </div>
            </div>

            <p><asp:LinkButton CssClass ="asp-button button" ID="btnCompute" runat="server" Text="Compute" OnClick="btnCompute_Click"/></p>
        </section>
    
</asp:Content>
