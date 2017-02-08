<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="HViewRecReq.aspx.cs" Inherits="Group4.HViewRecReq" %>
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
        <div id="loginbox" style="margin-top:50px;" class="mainbox well col-md-9 col-md-offset-3">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div style="font-size: x-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #0099CC">&nbsp; View Recruitment Request</div>
                        
                    </div>     

                    <div style="padding-top:20px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="addvacancyrequestform" class="form-horizontal" role="form" runat="server">
                                  
                            <div style="margin-bottom: 10px" class="input-group">


                            <asp:Label ID="lblSelect" Width="292px" Text="Select Placement Consultant ID" ForeColor="Teal" runat="server" Font-Size="Medium"></asp:Label>


                                        &nbsp;&nbsp;&nbsp;


                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="ddlPCID" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="ddlPCID_SelectedIndexChanged" CausesValidation ="True" Height="27px" Width="149px">
                                <asp:ListItem Value="0" Text="Select"></asp:ListItem>
                                </asp:DropDownList>


                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                

                              </div>
                            <div style="margin-bottom: 10px" class="input-group">


                            <asp:Label ID="lblSelect2" width="292px" Text="Select Requested date" ForeColor="Teal" runat="server" Font-Size="Medium"></asp:Label>


                                        &nbsp;&nbsp;&nbsp;


                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="ddlReqDate" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlReqDate_SelectedIndexChanged" CausesValidation="True" Height="34px" Width="149px">
                                <asp:ListItem Value="0" Text="Select"></asp:ListItem>
                                </asp:DropDownList>


                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                

                              </div>
                             <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->
                                 <asp:Button ID="btnreset" runat="server" Text="Reset" CausesValidation="false" CssClass="btn-success" UseSubmitBehavior="false" OnClick="btnreset_Click"/>
                                    <br />
                            </div>
                                        

                           <div style="margin-bottom: 10px" class="input-group">
                                <asp:GridView ID="gv1" runat="server" HeaderStyle-CssClass="danger" CssClass="table table-stripe table-hover"  AlternatingRowStyle-Wrap="true" Font-Size="Small" AutoGenerateColumns="False"  Width="735px">
                                    <Columns>
                                    
                                   
                                    <%--<asp:BoundField HeaderText="Recruitment Request ID" DataField="RecruitmentRequestID" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Requested Date" DataField='<%#Bind("Requested_Date","{0:dd-MM-yyyy}")%>' ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Placement Consultant" DataField="PlacementConsultantID" ItemStyle-Width="5%" />--%>
                                    
                                        <asp:TemplateField HeaderText="Recruitment Request ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lbAge4" runat="server" Text='<%#Eval("RecruitmentRequestID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAge4" runat="server" Text='<%#Eval("RecruitmentRequestID") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Requested Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbAge5" runat="server" Text='<%#Bind("Requested_Date","{0:dd-MM-yyyy}") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAge5" runat="server" Text='<%#Bind("Requested_Date","{0:dd-MM-yyyy}") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PlacementConsultantID">
                                        <ItemTemplate>
                                            <asp:Label ID="lbAge6" runat="server" Text='<%#Eval("PlacementConsultantID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAge6" runat="server" Text='<%#Eval("PlacementConsultantID") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                             </Columns>
                                </asp:GridView>
                               </div>
                            <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                     
                                   
                               
                                     
                                        
                                    </div>
                                    

                                
                        


                               


                               
                            </form>     
                         


                        </div>                     
                    </div>  
        </div> </div>
    </div>




























</asp:Content>
