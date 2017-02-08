<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="UDeleteVacancy.aspx.cs" Inherits="Group4.UDeleteVacancy" %>
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
                    <a href="UAddVacancyRequest.aspx">Create Vacancy Request</a>
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
                    <div class="panel-title">Delete Vacancy</div>
                </div>
                <%-- <div>
                    <asp:Button ID="Button1" runat="server" Text="View Vacancy" OnClick="Button1_Click"/>
                </div>--%>
                <div style="padding-top: 30px" class="panel-body">

                    <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                    <form id="addvacancy" class="form-horizontal" role="form" runat="server">
                        <div style="margin-bottom: 25px" class="input-group">
                            <asp:GridView ID="gv1" HeaderStyle-CssClass="danger" CssClass="table table-stripe table-hover" AlternatingRowStyle-Wrap="true" runat="server" Font-Size="Small" AutoGenerateColumns="false" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting" OnRowUpdating="gv1_RowUpdating" OnRowEditing="gv1_RowEditing">

                                <Columns>
                                      <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:HiddenField ID="hdnID" runat="server" Value='<%#Eval("VacancyID") %>' />
                                         
                                            <asp:LinkButton ID="lnkDelete" OnClientClick="return confirm('Do you want to delete?')" runat="server" Text="Delete"
                                                CommandName="Delete"></asp:LinkButton>
                                            
                                        </ItemTemplate>
                                       
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Vacancy ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblName" runat="server" Text='<%#Eval("VacancyID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("VacancyID") %>'></asp:Label>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="NoOfPositions">
                                        <ItemTemplate>
                                            <asp:Label ID="lbAge1" runat="server" Text='<%#Eval("NoOfPositions") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAge1" runat="server" Text='<%#Eval("NoOfPositions") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Skills">
                                        <ItemTemplate>
                                            <asp:Label ID="lbAge2" runat="server" Text='<%#Eval("Skills") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAge2" runat="server" Text='<%#Eval("Skills") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Experience">
                                        <ItemTemplate>
                                            <asp:Label ID="lbAge3" runat="server" Text='<%#Eval("Experience") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAge3" runat="server" Text='<%#Eval("Experience") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Location">
                                        <ItemTemplate>
                                            <asp:Label ID="lbAge4" runat="server" Text='<%#Eval("Location") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAge4" runat="server" Text='<%#Eval("Location") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="BusinessDomain">
                                        <ItemTemplate>
                                            <asp:Label ID="lbAge5" runat="server" Text='<%#Eval("BusinessDomain") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAge5" runat="server" Text='<%#Eval("BusinessDomain") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="RequiredByDate">
                                        <ItemTemplate>
                                            <asp:Label ID="lbAge6" runat="server" Text='<%#Bind("RequiredByDate","{0:MM-dd-yyyy}") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAge6" runat="server" Text='<%#Bind("RequiredByDate","{0:MM-dd-yyyy}") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                  

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
