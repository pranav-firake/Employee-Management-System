<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="HDeletePC.aspx.cs" Inherits="Group4.HDeletePC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                    <a class="navbar-brand page-scroll" href="WelcomePage.aspx">ABC Company</a>
                </div>

                 <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                     <li>
                        <a class="page-scroll" href="HRHome.aspx">HR Home</a>
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

        &nbsp;&nbsp;&nbsp;&nbsp;<p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>

        <p></p>
        <!-- Custom CSS -->
        <link href="css/simple-sidebar.css" rel="stylesheet">
        <!-- Sidebar -->
        <div id="sidebar-wrapper" style="margin-top:-10px">
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
    



        <div class="container">
            <div id="loginbox" style="margin-top: 50px;" class="mainbox well col-md-5 col-md-offset-3">
                <div class="panel panel-info">
                    <div class="panel-heading">
                       <div style="font-size: x-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #0099CC">&nbsp; Delete Placement Consultant</div>
                </div>
                    </div>

                    <div style="padding-top: 30px" class="panel-body">

                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <form id="addvacancy" class="form-horizontal" role="form" runat="server">
                            <div style="margin-bottom: 25px" class="input-group">
                                <asp:GridView ID="grdpc" runat="server" Font-Size="Small" HeaderStyle-CssClass="danger" CssClass="table table-stripe table-hover" AlternatingRowStyle-Wrap="true" AutoGenerateColumns="false" OnRowDeleting="grdpc_RowDeleting">
                                   
                                       <Columns>
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:HiddenField ID="hdnID" runat="server" Value='<%#Eval("PlacementConsultantID") %>' />
                                         
                                            <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" OnClientClick="return confirm('Do you want to delete?')"
                                                CommandName="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField HeaderText="Placement Consultant ID" DataField="PlacementConsultantID" ItemStyle-Width="5%" />
                                        <asp:BoundField HeaderText="Name" DataField="PlacementConsultantName" ItemStyle-Width="5%" />
                                        <asp:BoundField HeaderText="Location" DataField="Location" ItemStyle-Width="5%" />
                                  </Columns>
                                </asp:GridView>
                            </div>
                        </form>

                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
