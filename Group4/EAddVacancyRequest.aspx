<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="EAddVacancyRequest.aspx.cs" Inherits="Group4.EAddVacancyRequest" %>
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
                <a class="navbar-brand page-scroll" href="#">ABC Company</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="EmployeeHome.aspx">Employee Home</a>
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
   
    &nbsp;&nbsp;&nbsp;&nbsp;<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>
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
    






        <div class="container">  
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div style="font-size: x-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #0099CC">&nbsp; Add Vacancy Request</div>
                        
                    </div>     

                    <div style="padding-top:20px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="addvacancyrequestform" class="form-horizontal" role="form" runat="server">
                                  
                            <div style="margin-bottom: 10px" class="input-group">
                            <asp:Label ID="lblEmployeeID" Text="Employee ID" ForeColor="Teal" runat="server" Font-Size="Medium"></asp:Label>
                               
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
                                
                              </div>
                            <div style="margin-bottom: 15px; text-align: left;" class="input-group">
                              
                                       

                                <asp:TextBox ID="txtEmployeeID" runat="server"  Height="30px" Width="450px" ReadOnly="True" ></asp:TextBox>
                               
                                    </div>
                                
                            <div style="margin-bottom: 10px" class="input-group">
                            <asp:Label ID="lblNoV" Text="Enter Number of Vacancies" ForeColor="Teal" runat="server" Font-Size="Medium"></asp:Label>


                                        &nbsp;&nbsp;&nbsp;


                                        <asp:RequiredFieldValidator ID="rfvNoV" runat="server" ControlToValidate="txtNoV" ErrorMessage="Number is required" ForeColor="Red"></asp:RequiredFieldValidator>


                              &nbsp;&nbsp;
                                <asp:RangeValidator Type="Integer" ID="RangeValidator1" runat="server" ControlToValidate="txtNoV" ErrorMessage="Enter valid number" ForeColor="Red" MaximumValue="9999" MinimumValue="1"></asp:RangeValidator>


                              </div>




                            <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                     
                                        
                                <asp:TextBox ID="txtNoV" runat="server" Height="30px" Width="450px" TextMode="Number" OnTextChanged="txtNoV_TextChanged"></asp:TextBox>


                                    </div>
                                    

                                
                        


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->
                            </div>
                                    <div style="text-align:center;">
                                        <asp:Button ID="btnSubmit" CssClass="btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click" UseSubmitBehavior="False" BorderStyle="Solid" Width="160px" />
                                </div>


                               
                            </form>     
                         


                        </div>                     
                    </div>  
        </div> </div>
    </div>
</asp:Content>
