<%@ Page Title="" Language="C#" MasterPageFile="~/Deafault.Master" AutoEventWireup="true" CodeBehind="create_warden.aspx.cs" Inherits="Btech_Project_2021.create_warden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-xl-12 col-xl-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-lg-10">
                                <h1 class="text-center">Appoint new Warden</h1>
                            </div>
                        </header>

                       <center> <div class="panel-body col-xl-10 col-md-12"> 
                            <div class="row col-md-4 col-xl-12 ">
                                <div class="col-md-4 ">
                                    <div class="form-group">
                                        <asp:Label Text="Warden Name" runat="server"></asp:Label>
                                        <asp:TextBox ID="txtname" CssClass="form-control input-group-sm" runat="server" Enabled="true" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label Text="Warden Image" runat="server"></asp:Label>
                                        <asp:FileUpload ID="fuimng" CssClass="form-control input-group-sm" runat="server" Enabled="true" ></asp:FileUpload>
                                    </div>
                                </div>
                            </div>
                        </div>
                           </center>
                        <center> <div class="panel-body col-xl-10 col-md-12"> 
                            <div class="row col-md-4 col-xl-12 ">
                                <div class="col-md-4 ">
                                    <div class="form-group">
                                        <asp:Label Text="Password" runat="server"></asp:Label>
                                        <asp:TextBox ID="txtpassword" CssClass="form-control input-group-sm" runat="server" Enabled="true" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <div class="form-group">
                                        <asp:Label Text="Phone NO:" runat="server"></asp:Label>
                                        <asp:TextBox ID="txtno" CssClass="form-control input-group-sm" runat="server" Enabled="true" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                           </center>
                        <center> <div class="panel-body col-xl-10 col-md-12"> 
                            <div class="row col-md-4 col-xl-12 ">
                                <div class="col-md-4 ">
                                    <div class="form-group">
                                        <asp:Label Text="City" runat="server"></asp:Label>
                                        <asp:TextBox ID="txtcity" CssClass="form-control input-group-sm" runat="server" Enabled="true" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label Text="Gender" runat="server"></asp:Label>
                                        <asp:RadioButtonList ID="rblgender" runat="server" RepeatColumns="3">
                                            <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="Other" Value="3"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>
                        </div>
                           </center>
                        <center> <div class="panel-body col-xl-10 col-md-12"> 
                            <div class="row col-md-4 col-xl-12 ">
                                <div class="col-md-4 ">
                                    <div class="form-group">
                                        <asp:Label Text="Salary" runat="server"></asp:Label>
                                        <asp:TextBox ID="txtsalary" CssClass="form-control input-group-sm" runat="server" Enabled="true" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3 ">
                                    <div class="form-group">
                                        <asp:Label Text="Hostel" runat="server"></asp:Label>
                                        <asp:RadioButtonList ID="rblhostel"  runat="server" Enabled="true" RepeatColumns="3" >
                                            <asp:ListItem Text="Hostel 1" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Hostel 2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="Hostel 3 " Value="3"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>
                        </div>
                           </center>
                        <div class="row">
                            <div class="col-md-6 offset-md-4">
                                <asp:Button ID="btnsave" runat="server" Text="Submit" CssClass="btn btn-primary" Width="200px" OnClick="btnsave_Click" />
                            </div>
                        </div>
                        </section>
                        </div>
                </div>
                        
                    
        </section>
    </section>
</asp:Content>
