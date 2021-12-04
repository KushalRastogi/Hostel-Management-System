<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="warden_login.aspx.cs" Inherits="Btech_Project_2021.warden_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/signin.css" rel="stylesheet" />
    <script src="Scripts/modernizr-2.6.2.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery-1.10.2.js"></script>
    

    <style>
       body 
       {
            background-image: url('Images/campus.jpg' ) ;
            background-size: cover;
       }
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server" class="form-signin">
        <div class="navbar navbar-inverse navbar-fixed-top ">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><span>WARDEN LOGIN</span></a>
                    </div>
                    <div class="navbar-right">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Login.aspx"><span>ADMIN LOGIN</span></a>
                        <a class="navbar-brand" href="#"><span>STUDENT LOGIN</span></a>
                    </div>
                </div>
            </div>

            <h3 class="alert alert-success text-center">GRD HOSTEL</h3>
            <label for="inputEmail" class="sr-only">User Name</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="User Name" runat="server" required autofocus/>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" runat="server" id="inputPassword" class="form-control" placeholder="Password" required />
            <asp:Button runat="server" CssClass="btn btn-lg btn-success btn-block" Text="Sign In" ID="btnLogin" OnClick="btnLogin_Click" />
            <asp:Label ID="label1" runat="server"></asp:Label>
    </form>
    </div>>
</body>
</html>
