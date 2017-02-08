<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="HRHome.aspx.cs" Inherits="Group4.HRHome.HRHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 273px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
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
            <br />
            <br />
            <br />
        </div>
        <!-- /.container-fluid -->
    </nav>
         </div>

    
    <div id="wrapper">

       
 
         <!-- Sidebar -->
        <div id="sidebar-wrapper" style="margin-top:15px">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                         <i aria-hidden=true class="glyphicon glyphicon-user white"></i> <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                        
                    </a>
                </li>
                <li>
                    <a href="HAddRecReq.aspx">Create Recruitment Request</a>
                </li>
                <li>
                    <a href="HEditRecReq.aspx">Edit Recruitment Request</a>
                </li>
                <li>
                    <a href="HViewRecReq.aspx">View Recruitment Request</a>
                </li>
                <li>
                    <a href="HDeleteRecreq.aspx">Delete Recruitment Request</a>
                </li>
                <li>
                    <a href="HAddPlacementConsultant.aspx">Create Placement Consultant</a>
                </li>
                <li>
                    <a href="HEditPC.aspx">Edit Placement Consultant</a>
                </li>
                <li>
                    <a href="HViewPlacementConsultant.aspx">View Placement Consultant</a>
                </li>
                <li>
                    <a href="HDeletePC.aspx">Delete Placement Consultant</a>
                </li>
                
            </ul>
        </div>
    

      <div style="padding-top:100px;padding-left:40px">
    <table style="table-layout: inherit; list-style-type: inherit; width: 382px;padding-top:100px">
        <tr>
            
            <td class="auto-style6">
                <div class="list-group">
  <a href="#" class="list-group-item active">
   Recruitment Request Management
  </a>
  <a href="HAddRecReq.aspx"  class="list-group-item">Create</a>
  <a href="HEditRecReq.aspx" class="list-group-item">Edit</a>
  <a href="HViewRecReq.aspx" class="list-group-item">View</a>
  <a href="HDeleteRecreq.aspx" class="list-group-item">Delete</a>&nbsp;</div>
            </td>

            <td>
                <div  class="list-group" >
  <a href="#" class="list-group-item active">
    Placement Consultant management
  </a>
  <a href="HAddPlacementConsultant.aspx" class="list-group-item">Create</a>
  <a href="HEditPC.aspx" class="list-group-item">Edit</a>
  <a href="HViewPlacementConsultant.aspx" class="list-group-item">View</a>
  <a href="HDeletePC.aspx" class="list-group-item">Delete</a>&nbsp;
</div>
            </td>
        </tr>
    </table>
  </div>
    </div>

     


       <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</asp:Content>
