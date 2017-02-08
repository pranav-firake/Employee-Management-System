<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="Group4.WelcomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-decoration: underline;
            color: #CCCCCC;
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
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">ABC Company</a><br />
                <br />
                <br />
&nbsp;</div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="LoginPage.aspx">Log In</a>
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

    <!-- Header -->
    <header>
       <%-- <div class="container">--%>
           
                <div><h1>&nbsp;</h1>
                    <h1>&nbsp;</h1>
                    <h1 style="font-family: 'Comic Sans MS'">Welcome To ABC Recruitment Company</h1>
                </div>
                    <div><h5 class="auto-style2">Experience the excellence</h5>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p></div>
           
                <a href="LoginPage.aspx" ><span class="auto-style1"><em>Login to explore more</em></span></a>
            
     
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            
     
    </header>

  

    

  
        
    </div>
</asp:Content>


