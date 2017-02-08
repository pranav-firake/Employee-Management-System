<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="EmployeeHome.aspx.cs" Inherits="Group4.EmployeeHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 601px;
        }
        .auto-style2 {
            width: 828px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">ABC Company</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="LoginPage.aspx">Logout</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
         </div>

      <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
     <!-- Sidebar -->
        <div id="sidebar-wrapper" style="margin-top:-15px">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                      <i aria-hidden=true class="glyphicon glyphicon-user white"></i> <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                    </a>
                </li>
                <li>
                    <a href="EAddvacancyRequest.aspx">Create Vacancy Request</a>
                </li>
                <li>
                    <a href="EEditVacancy.aspx">Edit Vacancy</a>
                </li>
                <li>
                    <a href="EViewVacancy.aspx">View Vacancy</a>
                </li>
                <li>
                    <a href="EDeleteVacancy.aspx">Delete Vacancy</a>
                </li>
            </ul>
        </div>
    




    <div style="margin:50px">
    <table style="ruby-align:center;text-align:center;" >
        <tr style="text-align: center">
            <td></td>
            <td class="auto-style1">
                <div class="list-group">
  <a href="#" class="list-group-item active" style="color:antiquewhite;font-size:medium; top: 4px;">
   Vacancy Management
  </a>
  <a href="EAddVacancyRequest.aspx" class="list-group-item" style="color:teal; top: 5px;">Create Vacancy Request</a>
  <a href="EEditVacancy.aspx" class="list-group-item"  style="color:teal">Edit Vacancy</a>
  <a href="EViewVacancy.aspx" class="list-group-item"  style="color:teal">View Vacancy</a>
  <a href="EDeleteVacancy.aspx" class="list-group-item" >Delete Vacancy</a>&nbsp;
</div>
            </td>

            
        </tr>
    </table>
  
    </div>











      <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>






</asp:Content>
