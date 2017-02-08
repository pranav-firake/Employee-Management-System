<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Group4.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
               
                <a class="navbar-brand page-scroll" href="WelcomePage.aspx">ABC Company</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                      <li>
                        <a class="page-scroll" href="WelcomePage.aspx">Back</a>
                    </li>
                      <li>
                        <a class="page-scroll" href="AboutUs.aspx">About Us</a>
                    </li>
                      <li>
                        <a class="page-scroll" href="ContactUs.aspx">Contact Us</a>
                    </li>
                 
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

   
    &nbsp;&nbsp;&nbsp;&nbsp;<p></p><p></p><p></p><p></p><p></p><p>&nbsp;</p><p></p><p></p><p></p><p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
        <div class="container">  
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div style="font-size: x-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #0099CC">&nbsp; Sign In</div>
                        
                    </div>     

                    <div style="padding-top:20px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form" runat="server">
                                  
                            <div style="margin-bottom: 10px" class="input-group">
                            <asp:Label ID="lblUsername" Text="Enter Username" ForeColor="Teal" runat="server" Font-Size="Medium"></asp:Label>
                               
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               
                                  <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                              </div>
                            <div style="margin-bottom: 15px; text-align: left;" class="input-group">
                              
                                       

                                <asp:TextBox ID="txtUsername" runat="server"  Height="30px" Width="450px" ></asp:TextBox>
                               
                                    </div>
                                
                            <div style="margin-bottom: 10px" class="input-group">
                            <asp:Label ID="lblPassword" Text="Enter Password" ForeColor="Teal" runat="server" Font-Size="Medium"></asp:Label>


                                        &nbsp;&nbsp;&nbsp;


                                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>


                              </div>




                            <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                     
                                        
                                <asp:TextBox ID="txtPassword" runat="server" Height="30px" Width="450px" TextMode="Password"></asp:TextBox>


                                    </div>
                                    

                                
                        


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </div>
                                    <div style="text-align:center;">
                                        <asp:Button ID="btnSubmit" CssClass="btn-success" runat="server" Text="Submit" OnClick="Submit_Click" UseSubmitBehavior="False" BorderStyle="Solid" Width="160px" />
                                </div>


                               
                            </form>     
                         


                        </div>                     
                    </div>  
        </div>
    
    



    </div>
    </div>
</asp:Content>
