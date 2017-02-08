<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Group4.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #FFFFCC;
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
                        <a class="page-scroll" href="WelcomePage.aspx">Back</a>
                    </li>
                      <li>
                        <a class="page-scroll" href="AboutUs.aspx">About Us</a>
                    </li>
                      <li>
                        <a class="page-scroll" href="LoginPage.aspx">Login</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
         </div>

    <div style="padding-top:50px"></div>

    <div style="width:100%">
        <h3 class="auto-style1" style="font-family: &quot;Comic Sans MS&quot;">
            Feel free to contact us for any query.
        </h3>
    </div>
    <div class="container">
             <div class="row">
                <div>
                  <form name="sentMessage" id="contactForm" novalidate runat="server">
                        <div class="row">
                            <div class="col-md-4">
                                </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" name="name" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" name="email" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                               
                                <div class="form-group" style="height: 200px">
                                    <textarea class="form-control" placeholder="Your Message *" name="message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                </div>
                                 <div class="form-group">
                                 <asp:Button ID="btnSubmit" CssClass="btn-warning form-control" runat="server" Text="Submit to us" OnClick="btnSubmit_Click"/>
                            </div>
                            </div>
                            
                    
                                
                        
                        </div>
                    </form>
                </div>
            </div>
        
        </div>
</asp:Content>
