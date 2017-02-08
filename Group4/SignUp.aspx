<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Group4.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top ">
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
                        <a class="page-scroll" href="LoginPage.aspx">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">Portfolio</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#team">Team</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

</div>
<div class="container">  
        <div id="signupbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign Up</div>

                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
           <form id="signupform" class="form-horizontal" role="form" method="post" runat="server">
                                  
                      <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                
                            <div style="margin-bottom: 25px; " class="input-group">
                                <asp:Label ID="lblUsername" Text="Enter Username :   " runat="server"></asp:Label>
                                       
                                        
                                <asp:TextBox ID="txtUsername" runat="server" Height="30px" Width="300px"></asp:TextBox>
                               <%-- <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" EnableTheming="True" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                           </div>--%>
                                </div>
                          
                          <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                <asp:Label ID="lblPassword" Text="Enter Password :   " runat="server"></asp:Label>
                                       
                                        
                                <asp:TextBox ID="txtPassword" runat="server" Height="30px" Width="300px" TextMode="Password"></asp:TextBox>
                               <%-- <div><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                           </div>--%>
                              </div>
                            <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                <asp:Label ID="lblProjectID" Text="Enter Project ID :   " runat="server"></asp:Label>
                                 
                                        
                                <asp:TextBox ID="txtProjectID" runat="server" Height="30px" Width="300px" TextMode="Password"></asp:TextBox>
                           </div>         
                           <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                <asp:Label ID="lblDOB" Text="Enter Date Of Birth :   " runat="server"></asp:Label>
                                        
                                <asp:TextBox ID="txtDOB" runat="server" Height="30px" Width="300px" TextMode="Date"></asp:TextBox>
                               <%--<div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDOB" ErrorMessage="Please enter date of birth" ForeColor="Red"></asp:RequiredFieldValidator>
                           </div>--%></div>
                           <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                <asp:Label ID="lblDOJ" Text="Enter Date of joining :   " runat="server"></asp:Label>
                                     
                                        
                                <asp:TextBox ID="txtDOJ" runat="server" Height="30px" Width="300px" TextMode="Date"></asp:TextBox>
                                <%--<div>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDOJ" ErrorMessage="Please enter date of joining" ForeColor="Red"></asp:RequiredFieldValidator>
                           </div>--%></div>
                            <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                <asp:Label ID="lblGender" Text="Enter Gender :   " runat="server"></asp:Label>
                                
                                        
                                <asp:RadioButtonList ID="rblGender" runat="server" Height="38px">
                                    <asp:ListItem Text="Female"></asp:ListItem>
                                    <asp:ListItem Text="Male"></asp:ListItem>
                                </asp:RadioButtonList>
                           </div>    
                            <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                <asp:Label ID="CTC_Offered" Text="Enter CTC :   " runat="server"></asp:Label>
                                     
                                        
                                <asp:TextBox ID="txtCTC" runat="server" Height="30px" Width="300px" ></asp:TextBox>
                           </div>
                            <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                <asp:Label ID="lblDesignation" Text="Enter Designation :   " runat="server"></asp:Label>
                                <asp:TextBox ID="txtDesignation" runat="server" Height="30px" Width="300px"></asp:TextBox>
                           </div>
                          <div>
                          <asp:Button ID="btnSubmit" runat="server" Text="Submit"  OnClick="btnSubmit_Click" UseSubmitBehavior="False"/>
                          <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" UseSubmitBehavior="False" OnClick="btnCancel_Click1" />

                          </div>

                             



                                    

                                
                                    </div>
                            
                            
                         





                          


                               
                         </form> 



                        </div>                     
                    </div>  
        </div>
    </div>





</asp:Content>
