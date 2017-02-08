<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="UEditVacancy.aspx.cs" Inherits="Group4.UEditVacancy" %>
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
        <div id="loginbox" style="margin-top:50px;" class="mainbox well col-md-10 col-md-offset-3">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">Edit Vacancy Details</div>
                </div>
                <%-- <div>
                    <asp:Button ID="Button1" runat="server" Text="View Vacancy" OnClick="Button1_Click"/>
                </div>--%>
                <div style="padding-top: 30px" class="panel-body">

                    <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                    <form id="addvacancy" class="form-horizontal" role="form" runat="server">
                        <div style="margin-bottom: 25px" class="input-group">
                            <asp:GridView ID="gv1" runat="server" Font-Size="Small" HeaderStyle-CssClass="danger" CssClass="table table-stripe table-hover" AlternatingRowStyle-Wrap="true" AutoGenerateColumns="false" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting" OnRowUpdating="gv1_RowUpdating" OnRowEditing="gv1_RowEditing">

                                <Columns>
                                      <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:HiddenField ID="hdnID" runat="server" Value='<%#Eval("VacancyID") %>' />
                                         
                                            <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit"
                                                CommandName="Edit"></asp:LinkButton>
                                            
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:HiddenField ID="hdnID" runat="server" Value='<%#Eval("VacancyID") %>' />
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('Do you want to Update?')" Text="Update"
                                                CommandName="Update"></asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton2" runat="server" Text="Cancel"
                                                CommandName="Cancel" CausesValidation="false"></asp:LinkButton>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Vacancy ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblid" runat="server" Text='<%#Eval("VacancyID") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Label ID="lblid1" runat="server" Width="35px" Text='<%#Eval("VacancyID") %>'></asp:Label>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="NoOfPositions">
                                        <ItemTemplate>
                                            <asp:Label ID="lblpositions" runat="server" Text='<%#Eval("NoOfPositions") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>

                                            <asp:TextBox ID="txtpositions" Width="35px" TextMode="Number" runat="server" Text='<%#Eval("NoOfPositions") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvtxtPos1" ControlToValidate="txtpositions" runat="server" ForeColor="Red" ErrorMessage="Enter a number"></asp:RequiredFieldValidator>
                                            <asp:RangeValidator Type="Integer" ID="rvtxtPos" runat="server" ErrorMessage="Enter a valid number" ForeColor="#ff0000" ControlToValidate="txtpositions" MaximumValue="999" MinimumValue="1"></asp:RangeValidator>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Skills">
                                        <ItemTemplate>
                                            <asp:Label ID="lblskills" runat="server" Text='<%#Eval("Skills") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                             <asp:DropDownList ID="ddlSkills" runat="server" Width="60px" Text='<%#Eval("Skills") %>'>
                                    <asp:ListItem Text="C++"></asp:ListItem>
                                    <asp:ListItem Text="Java"></asp:ListItem>
                                    <asp:ListItem Text=".Net"></asp:ListItem>
                                    <asp:ListItem Text="Unix"></asp:ListItem>
                                    <asp:ListItem Text="Cobol"></asp:ListItem>
                                    <asp:ListItem Text="Oracle"></asp:ListItem>
                                     <asp:ListItem Text="SAP"></asp:ListItem>





                                </asp:DropDownList>

                                           <%-- <asp:TextBox ID="txtskills" runat="server" Width="50px" Text='<%#Eval("Skills") %>'></asp:TextBox>--%>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Experience">
                                        <ItemTemplate>
                                            <asp:Label ID="lblexp" runat="server" Text='<%#Eval("Experience") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtexp" runat="server" TextMode="Number" Width="30px" Text='<%#Eval("Experience") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvExp1" ControlToValidate="txtexp" runat="server" ForeColor="Red" ErrorMessage="Enter a number"></asp:RequiredFieldValidator>
                                            <asp:RangeValidator ID="rvExp" Type="Integer" runat="server" MaximumValue="99" MinimumValue="0" ErrorMessage="Enter a valid number" ForeColor="#ff0000" ControlToValidate="txtexp"></asp:RangeValidator>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Location">
                                        <ItemTemplate>
                                            <asp:Label ID="lbllocation" runat="server" Text='<%#Eval("Location") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                             <asp:DropDownList ID="ddlLocation" Width="80px" runat="server" Text='<%#Eval("Location") %>'>
                                    <asp:ListItem Text="Mumbai"></asp:ListItem>
                                    <asp:ListItem Text="Thane"></asp:ListItem>
                                    <asp:ListItem Text="Ahmedabad"></asp:ListItem>
                                    <asp:ListItem Text="Hyderabad"></asp:ListItem>
                                    <asp:ListItem Text="Chennai"></asp:ListItem>
                                    <asp:ListItem Text="Lucknow"></asp:ListItem>
                                    <asp:ListItem Text="Kolkata"></asp:ListItem>
                                    <asp:ListItem Text="Bangalore"></asp:ListItem>
                                    <asp:ListItem Text="Pune"></asp:ListItem>
                                    <asp:ListItem Text="Delhi"></asp:ListItem>
                                    <asp:ListItem Text="Kochi"></asp:ListItem>
                                     <asp:ListItem Text="Trivandrum"></asp:ListItem>




                                </asp:DropDownList>


<%--                                            <asp:TextBox ID="txtlocation" runat="server" Width="90px" Text='<%#Eval("Location") %>'></asp:TextBox>--%>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="BusinessDomain">
                                        <ItemTemplate>
                                            <asp:Label ID="lbldomain" runat="server" Text='<%#Eval("BusinessDomain") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                             <asp:DropDownList ID="ddlDomain" runat="server" Width="50px" Text='<%#Eval("BusinessDomain") %>'>
                                  

                                            <asp:ListItem Text="ER"></asp:ListItem>
                                            <asp:ListItem Text="BFS"></asp:ListItem>
                                            <asp:ListItem Text="EntSol"></asp:ListItem>
                                            <asp:ListItem Text="MFG"></asp:ListItem>
                                            <asp:ListItem Text="GE"></asp:ListItem>
                                            <asp:ListItem Text="LS"></asp:ListItem>
                                            <asp:ListItem Text="TTH"></asp:ListItem>
                               



                                </asp:DropDownList>
                                          <%--  <asp:TextBox ID="txtdomain" runat="server" Width="50px" Text='<%#Eval("BusinessDomain") %>'></asp:TextBox>--%>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="RequiredByDate">
                                        <ItemTemplate>
                                            <asp:Label ID="lbldate" runat="server" Text='<%#Bind("RequiredByDate","{0:MM-dd-yyyy}") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
<%--                                            <asp:TextBox ID="txtdate" runat="server" TextMode="Date" Width="90px" Text='<%#Eval Convert.ToDateTime("RequiredByDate").ToString() %>'></asp:TextBox>--%>
                                          
                                            
                                              <asp:TextBox ID="txtdate" runat="server" TextMode="Date" Text='<%# Bind("RequiredByDate","{0:yyyy-MM-dd}") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvEditDate" runat="server" ControlToValidate="txtdate" ForeColor="Red" ErrorMessage="Enter date"></asp:RequiredFieldValidator>
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
