<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="UnitheadHome.aspx.cs" Inherits="Group4.UnitheadHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 626px
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
        <div id="sidebar-wrapper" style="margin-top:25px">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                     <a href="#">
                      <i aria-hidden=true class="glyphicon glyphicon-user white"></i> <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                    </a>
                </li>
                <li>
                    <a href="UAddVacancyRequest.aspx">Create Vacancy Request</a>
                </li>
                <li>
                    <a href="UEditVacancy.aspx">Edit Vacancy</a>
                </li>
                <li>
                    <a href="UViewVacancy.aspx">View Vacancy</a>
                </li>
                <li>
                    <a href="UDeleteVacancy.aspx">Delete Vacancy</a>
                </li>
                 <li>
                    <a href="UApproveVacancies.aspx">Approve Vacancies</a>
                </li>
                
            </ul>
        </div>
    




     <table style="text-align:center;padding-top:200px">
         <tr style="text-align: center">
            <td> </td>
            <td class="auto-style1">
                <div class="list-group" style="padding-top:50px;">
  <a href="#" class="list-group-item active">Vacancy Management </a>
  <a href="UAddVacancyRequest.aspx" class="list-group-item">Create Vacancy Request</a>
  <a href="UEditVacancy.aspx" class="list-group-item">Edit Vacancy </a>
  <a href="UViewVacancy.aspx" class="list-group-item">View Vacancy </a>
  <a href="UDeleteVacancy.aspx" class="list-group-item">Delete Vacancy </a>
  <a href="UApproveVacancies.aspx" class="list-group-item">Approve Vacancies</a>&nbsp;
</div>
            </td>

            
           
        </tr>
    </table>
  


    
      <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>






</asp:Content>
