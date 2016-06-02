<%@ Page Title="Student Details " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="COMP2007_EFDemo7.StudentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Student Details</h1>
                <h5>All Fields are Required</h5>
                <br />
                <div class="form-group">
                    <label class="control-label" for="LastNameTextBox">Last Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="LastNameTextBox" placeholder="Last Name" required="true" MaxLength="50" TabIndex="0"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="FirstNameTextBox">First Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="FirstNameTextBox" placeholder="First Name" required="true" MaxLength="50"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="EnrollmentDateTextBox">Enrollment Date</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="EnrollmentDateTextBox" placeholder="Enrollment Date" required="true" TextMode="Date"></asp:TextBox>
                    <asp:RangeValidator ID="DateRangeValidator" runat="server" ErrorMessage="Invalid Date! Format: mm/dd/yy" ControlToValidate="EnrollmentDateTextBox"
                        Type="Date" MinimumValue="01/01/2000" MaximumValue="01/01/2999" BackColor="Red" ForeColor="White" Font-Size="Large" Display="Dynamic"></asp:RangeValidator>
                </div>
                <div class="text-right">
                    <asp:Button runat="server" ID="CancelButton" CssClass="btn btn-warning btn-lg" Text="Cancel" OnClick="CancelButton_Click" UseSubmitBehavior="false" CausesValidation="false" />
                    <asp:Button runat="server" ID="SaveButton" CssClass="btn btn-primary btn-lg" Text="Save" OnClick="SaveButton_Click" />
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
