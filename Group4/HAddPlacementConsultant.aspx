<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="HAddPlacementConsultant.aspx.cs" Inherits="Group4.AddPlacementConsultant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function validate() {
            var flag = 0;

            var name = document.getElementById('<%=txtpcname.ClientID%>').value;
            var pass = document.getElementById('<%=txtPwd.ClientID%>').value;
            var cpass = document.getElementById('<%=txtcpwd.ClientID%>').value;
            var location = document.getElementById('<%=ddlloc.ClientID%>');
            var loc1 = location.options[location.selectedIndex].value;
            //var strUser1 = loc.options[loc.selectedIndex].text;
            if (loc1 == 0) {
                document.getElementById('<%=lbleloc.ClientID%>').innerHTML = "Enter Location";
                flag = 1;
            }



            var trimName = name.replace(/^\s+|\s+$/g, '');
            var trimPass = pass.replace(/^\s+|\s+$/g, '');
            var trimCpass = cpass.replace(/^\s+|\s+$/g, '');

            if (name == "" || trimName == "") {
                document.getElementById('<%=lblename.ClientID%>').innerHTML = "Enter Name";
                flag = 1;
            }
            else {
                var match1 = /^[a-zA-Z]+$/;
                if (!match1.test(name)) {
                    alert("Enter valid Name.");
                    // document.getElementById('<%=lblename.ClientID%>').innerHTML = "Enter valid Name.";
                    flag = 1;
                }
            }

            if (pass == "" || trimPass == "") {
                document.getElementById('<%=lblepass.ClientID%>').innerHTML = "Enter Password";
                flag = 1;
            }
            else {
                var match = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{4,15}$/;
                //alert("qqqq");
                if (match.test(pass)) {
                    if (pass == cpass) {

                    }
                    else {
                        alert("password mismatch");
                        flag = 1;
                    }
                }
                else {
                    flag = 1;
                    alert("Incorrect Format");
                }
            }
            //alert("aaa"+flag);
            if (flag == 1) {

                return false;

            }
            else {

                return true;
            }
        }


    </script>
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
        <link href="css/simple-sidebar.css" rel="stylesheet" />
        <!-- Sidebar -->
        <div id="sidebar-wrapper" style="margin-top: -10px">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        <i aria-hidden="true" class="glyphicon glyphicon-user white"></i>
                        <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>

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
            <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-8 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div style="font-size: x-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #0099CC">&nbsp;Create Placement Consultant</div>

                    </div>
                    <div style="padding-top: 30px" class="panel-body">

                        <form id="loginform" class="form-horizontal" runat="server" role="form">
                            <table class="table-responsive">

                                <tr>
                                    <td class="text-right">
                                        <div style="margin-bottom: 25px; text-align: left; top: -2px; left: 0px; width: 213px; height: 42px;" class="input-group">
                                            <asp:Label ID="lblpcname" Text="Placement Consultant Name" runat="server" Style="text-align: left"></asp:Label>
                                        </div>
                                    </td>

                                    <td>
                                        <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                            <asp:TextBox ID="txtpcname" runat="server" Height="30px" Width="267px" AutoPostBack="true" ></asp:TextBox>

                                            <asp:Label ID="lblename" runat="server" Text="" ForeColor="Red" CssClass="error"></asp:Label>
                                        </div>
                                    </td>

                                </tr>

                                <tr>
                                    <td class="text-right">
                                        <div style="margin-bottom: 25px; top: -6px; left: 0px; height: 26px;" class="input-group">
                                            <asp:Label ID="lblpwd" Text="Password" runat="server" Style="text-align: left"></asp:Label>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                            <asp:TextBox ID="txtPwd" runat="server" Height="30px" Width="272px" TextMode="Password"></asp:TextBox>

                                            <asp:Label ID="lblepass" runat="server" ForeColor="Red" Text="" CssClass="error"></asp:Label>

                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="text-right">
                                        <div class="input-group" style="margin-bottom: 10px; top: -15px; left: 0px; height: 35px;">
                                            <asp:Label ID="lblcpwd" Text="Confirm Pasword" runat="server"></asp:Label>
                                        </div>
                                    </td>
                                    <td>
                                        <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                            <asp:TextBox ID="txtcpwd" runat="server" Height="30px" Width="272px" TextMode="Password"></asp:TextBox>


                                            <asp:Label ID="lblecpass" ForeColor="Red" runat="server" Text=""></asp:Label>

                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-right">
                                        <div style="margin-bottom: 25px; top: -5px; left: 0px; height: 25px;" class="input-group">
                                            <asp:Label ID="lbllocation" Text="Location" runat="server"></asp:Label>
                                        </div>
                                    </td>
                                    <td>

                                        <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                            <asp:DropDownList ID="ddlloc" runat="server" Width="273px">
                                                <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                                <asp:ListItem Text="Mumbai" Value="Mumbai"></asp:ListItem>
                                                <asp:ListItem Text="Ahmedabad" Value="Ahmedabad"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Label ID="lbleloc" runat="server" Text="" CssClass="error" ForeColor="Red"></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-right">
                                        <div>
                                            <asp:Button ID="btnSubmit" CssClass="btn-success" runat="server" Text="Submit" OnClientClick="return validate();" OnClick="btnSubmit_Click" CausesValidation="true" />
                                        </div>
                                    </td>
                                    <td>
                                        <div style="text-align: justify">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnCancel" CssClass="btn-danger" runat="server" Text="Cancel" CausesValidation="false" UseSubmitBehavior="true" OnClick="btnCancel_Click" />
                                        </div>
                                    </td>
                                </tr>






                            </table>
                        </form>
                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
