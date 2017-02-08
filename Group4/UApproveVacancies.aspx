<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="UApproveVacancies.aspx.cs" Inherits="Group4.UApproveVacancies" %>
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
                        <a class="page-scroll" href="UnitheadHome.aspx">Unit Head Home</a>
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
                    <a href="UAddvacancyRequest.aspx">Create Vacancy Request</a>
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
    


         <div class="container">
        <div id="loginbox" style="margin-top:50px;" class="mainbox well col-md-8 col-md-offset-3">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Approve Vacancies</div>
                </div>
        
                <div style="padding-top: 30px" class="panel-body">

                    <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                    <form id="addvacancy" class="form-horizontal" role="form" runat="server">
                        <div style="margin-bottom: 25px" class="input-group">
                            <asp:GridView ID="gv1" HeaderStyle-CssClass="danger" CssClass="table table-stripe table-hover"  runat="server" Font-Size="Small" OnRowCancelingEdit="gv1_RowCancelingEdit" AutoGenerateColumns="false" OnRowCommand="gv1_RowCommand">

                                <Columns>
                                      <asp:TemplateField HeaderText="Approve">
                                        <ItemTemplate>
                                            <asp:HiddenField ID="hdnID" runat="server" Value='<%#Eval("VacancyID") %>' />
                                         
                                            <asp:LinkButton ID="lnkApprove" runat="server" Text="Approve" CommandArgument='<%#Eval("VacancyID") %>' CommandName="Approve"></asp:LinkButton>
                                            
                                        </ItemTemplate>
                                          </asp:TemplateField>
                                    <asp:TemplateField>
                                           <ItemTemplate>
                                            <asp:HiddenField ID="hdnID1" runat="server" Value='<%#Eval("VacancyID") %>' />
                                         
                                            <asp:LinkButton ID="lnkCancel" runat="server" Text="Cancel"
                                                CommandName="Cancel"></asp:LinkButton>
                                            
                                        </ItemTemplate>
                                    
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="Vacancy ID" DataField="VacancyID" ItemStyle-Width="5%"  />
                                    <asp:BoundField HeaderText="Status" DataField="ApprovalStatus" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="No. Of Positions" DataField="NoOfPositions" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Skill" DataField="Skills" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Experience" DataField="Experience" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Location" DataField="Location" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Business Domain" DataField="BusinessDomain" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Required By Date" DataField="RequiredByDate" ItemStyle-Width="5%" />

                                </Columns>
                            </asp:GridView>
                        </div>
                    </form>
                    <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
                </div>

            </div>
        </div>

    </div>













     </div>


</asp:Content>
