<%@ Page Title="" Language="C#" MasterPageFile="~/Deafault.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Btech_Project_2021.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <div class="intro-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <marquee><h2>Announcements</h2></marquee>
                    <div class="intro-message"></div>
                    <h1>Hello<%=Session["a_name"] %></h1>
                    <h3>Welcome to GRD HOSTEL MANAGEMENT</h3>
                    <hr class="intro-divider" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
