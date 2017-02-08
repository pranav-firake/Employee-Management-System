<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="HEditRecReq.aspx.cs" Inherits="Group4.HEditRecReq" %>
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
                        <div style="font-size: x-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #0099CC">&nbsp; Edit Recruitment Request</div>
                        
                    </div>     

                    <div style="padding-top:20px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="addvacancyrequestform" class="form-horizontal" role="form" runat="server">
                                  
                            <div style="margin-bottom: 10px" class="input-group" textalign:"40%">
                            <asp:Label ID="lblSelect" Text="Select Recruitment Request ID" ForeColor="Teal" runat="server" Font-Size="Medium"></asp:Label>


                                        &nbsp;&nbsp;&nbsp;


                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="ddlRecID" runat="server"  CausesValidation="True">
                                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                                </asp:DropDownList>


                                <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Select Recruitment Request ID." ControlToValidate="ddlRecID" InitialValue="0" ForeColor="Red"></asp:RequiredFieldValidator>


                              </div>
                             <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->
                            &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Submit" CssClass="btn-danger active" runat="server" Text="Submit" UseSubmitBehavior="False" BorderStyle="Solid" Width="160px" OnClick="Submit_Click" />
                                &nbsp;&nbsp;&nbsp;
                                    <br />
                            </div>
                                        

                           <div style="margin-bottom: 10px" class="input-group">
                                <asp:GridView ID="gv1" runat="server" HeaderStyle-CssClass="danger" CssClass="table table-stripe table-hover"  AlternatingRowStyle-Wrap="true" Font-Size="Small" AutoGenerateColumns="False"  Width="735px">
                                    <Columns>
                                         <asp:TemplateField>
                                          <ItemTemplate>
                                          <asp:CheckBox ID="chk_select" runat="server" />
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
                                            <asp:Label ID="lbAge6" runat="server" Text='<%#Eval("RequiredByDate") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAge6" runat="server" Text='<%#Eval("RequiredByDate") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                   <%-- <asp:BoundField HeaderText="Vacancy ID" DataField="VacancyID" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="No. Of Positions" DataField="NoOfPositions" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Skill" DataField="Skills" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Experience" DataField="Experience" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Location" DataField="Location" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Business Domain" DataField="BusinessDomain" ItemStyle-Width="5%" />
                                    <asp:BoundField HeaderText="Required By Date" DataField="RequiredByDate" ItemStyle-Width="5%" />--%>
                             </Columns>
                                </asp:GridView>
                               </div>
                            <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                     
                                   
                               
                                     
                                        
                                    </div>
                                    

                                
                        


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->
                            &nbsp;<asp:Button ID="btnAddVacancies" CssClass="btn-success" runat="server" Text="Add Selected Vacancies" UseSubmitBehavior="False" BorderStyle="Solid" Width="160px" OnClick="btnAddVacancies_Click" />
                                    &nbsp;&nbsp;&nbsp;
                            </div>
                                    <div style="text-align:center;">
                                        <asp:Button ID="btnDeleteVac" CssClass="btn-danger active" runat="server" Text="Delete Vacancies" UseSubmitBehavior="False" BorderStyle="Solid" Width="160px" OnClick="btnDelete_Click" />
                                &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnAdd" CssClass="btn-success" runat="server" Text="Add More Vacancies" UseSubmitBehavior="False" BorderStyle="Solid" Width="160px" OnClick="btnAdd_Click" />
                                </div>


                               
                            </form>     
                         


                        </div>                     
                    </div>  
        </div> </div>
    </div>
















</asp:Content>
