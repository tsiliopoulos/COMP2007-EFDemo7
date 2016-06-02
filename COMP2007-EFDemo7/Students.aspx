<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="COMP2007_EFDemo7.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Students</h1>

        <a href="StudentDetails.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add Student</a>
        <div class="table-responsive">
             <asp:GridView CssClass="table table-striped table-bordered  table-hover" runat="server" ID="StudentsGridView" AutoGenerateColumns="false"
                 OnRowDeleting="StudentsGridView_RowDeleting" DataKeyNames="StudentID">
                 <Columns>
                     <asp:BoundField DataField="StudentID" HeaderText="Student ID" Visible="true" />
                     <asp:BoundField DataField="LastName" HeaderText="Last Name" Visible="true" />
                     <asp:BoundField DataField="FirstMidName" HeaderText="First Name" Visible="true" />
                     <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" Visible="true" DataFormatString="{0:MMM dd, yyyy}" />
                     <asp:HyperLinkField HeaderText="Edit" Text="Edit" NavigateUrl="StudentDetails.aspx" ItemStyle-CssClass="btn btn-primary btn-sm"
                         DataNavigateUrlFields="StudentID" DataNavigateUrlFormatString="StudentDetails.aspx?StudentID={0}" ControlStyle-ForeColor="White" ItemStyle-HorizontalAlign="Center"/>
                     <asp:CommandField HeaderText="Delete" DeleteText="Delete" ShowDeleteButton="true" 
                         ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                          />
                 </Columns>

             </asp:GridView>
        </div>
    </div>
</asp:Content>
