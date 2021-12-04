<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display_warden.aspx.cs" Inherits="Btech_Project_2021.display_warden" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wardens</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-sm  navbar-dark navbar-collapse   bg-success  p-3 m-0">
  <!-- Brand -->
  <a class="navbar-brand" href="#"><img src="Images/logogrd.png" /></a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="create_warden.aspx">Appoint New Warden</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Students</a>
    </li>


    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        GRD HOSTEL
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Boys Hostel 1</a>
        <a class="dropdown-item" href="#">Boys Hostel 2</a>
        <a class="dropdown-item" href="#">Girls Hostel</a>
      </div>
    </li>
    <li class="nav-link dropdown " style="float:right">
      <a class="nav-link dropdown-toggle" href="#" id="settings" data-toggle="dropdown">
            Settings
      </a>            
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Rules</a>
        <a class="dropdown-item" href="#">Link 2</a>
        <a class="dropdown-item" href="Login.aspx">Log Out</a>
      </div>
    </li>
    <li><a href="#" class="nav-link" >Welcome <%=Session["a_name"].ToString() %></a></li>
    
  </ul>

</nav>
        <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-xl-12 col-xl-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-lg-10">
                                <h1 class="text-center">List of Warden</h1>
                            </div>
                        </header>
                        <div class="row container"></div>
        
                <div class="container">
        <center>
            <div>
                        <div class="text-center">
                            
        <table>
            <tr>
                            <asp:GridView ID="grd" runat="server" CssClass="table table-hover table-bordered table-responsive-lg" AutoGenerateColumns="False" OnRowCommand="grd_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Image:">
                                        <ItemTemplate>
                                            <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("img","~Warden Login/wardenimg/{0}") %>' Width="60px" Height="70px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Name:">
                                        <ItemTemplate>
                                            <%#Eval("name") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Password:">
                                        <ItemTemplate>
                                            <%#Eval("password") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PhoneNo:">
                                        <ItemTemplate>
                                            <%#Eval("phoneno") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="City:">
                                        <ItemTemplate>
                                            <%#Eval("city") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Salary:">
                                        <ItemTemplate>
                                            <%#Eval("salary") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Gender:">
                                        <ItemTemplate>
                                            <%#Eval("gender") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Hostel:">
                                        <ItemTemplate>
                                            <%#Eval("Hostel") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete:">
                                        <ItemTemplate>
                                            <asp:Button ID="btndelete" runat="server" Text="Delete" CommandArgument='<%#Eval("id") %>' CommandName="de" OnClientClick="return confirm('Are you want to delete?')" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Edit:">
                                        <ItemTemplate>
                                            <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="ed" CommandArgument='<%#Eval("id") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                </tr>
        </table>            
                        </div>
                            </div>
            </center>
                </div>
                        </section>
                    </div>
                </div>
            </section>
            </section>

     
        
            
        <footer>
            <table style="width:100%">
                <tr></tr>
                <tr></tr>
                <tr></tr>
                <tr>
                    <td style="text-align:center; background-color:green; color:white;">
            &copy;<%:DateTime.Now.Year %>-Made by Kushal Rastogi</td></tr>
                </table>
        </footer>
         
       

    </form>
</body>
</html>
