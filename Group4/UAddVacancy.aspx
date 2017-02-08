<%@ Page Title="" Language="C#" MasterPageFile="~/Main_master.Master" AutoEventWireup="true" CodeBehind="UAddVacancy.aspx.cs" Inherits="Group4.UAddVacancy" %>
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
    


      
 <div class="container" >  
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-7 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                         <div style="font-size: x-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #0099CC">&nbsp; Add Vacancy Details</div>
                      
                          </div>  
                    <div style="padding-top:30px" class="panel-body" >
    
                        <form id="loginform" class="form-horizontal" runat="server" role="form">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                     <table class="table-responsive">        
                                    
                            <tr>
                            <td class="auto-style1">
                                 <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                            <asp:Label ID="lblVacancyRequestID" Text="Vacancy Request ID" runat="server" style="text-align: left"></asp:Label>
                             </div></td> 
                                 
                                <td>
                                    <div style="margin-bottom: 25px; text-align: left; top: 10px; left: 1px;" class="input-group">
                                        <asp:TextBox ID="txtVacReqID" runat="server" ReadOnly="true" Width="272px"></asp:TextBox>
                                    </div>
                                        </td> 

                               </tr>

                                            <tr>
                                    <td class="auto-style1">
                                        <div style="margin-bottom: 25px" class="input-group">
                            <asp:Label ID="lblNumberOfPositions" Text="Number Of Positions" runat="server"></asp:Label>
                                            </div>
                                    </td>
                                    <td>
                                         <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                        <asp:TextBox ID="txtNumberOfPositions" runat="server" Height="30px" Width="272px" TextMode="Number"></asp:TextBox>
                              &nbsp;<asp:RequiredFieldValidator ID="rfvNumberOfPositions" runat="server" ControlToValidate="txtNumberOfPositions" ErrorMessage="Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                  &nbsp;
                                             <asp:RangeValidator Type="Integer" ID="rvNoP" runat="server" ControlToValidate="txtNumberOfPositions" ErrorMessage="Enter Valid Number" ForeColor="Red" MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                                  </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style1">
                                        <div class="input-group"  style="margin-bottom: 10px">
                                        <asp:Label ID="lblSkills" Text="Skills" runat="server"></asp:Label>
                                            </div>
                                    </td>
                                    <td>
                                         <div class="input-group"  style="margin-bottom: 10px">
                                           <asp:DropDownList ID="ddlSkills" runat="server" Width="273px">
                                    <asp:ListItem Text="C++"></asp:ListItem>
                                    <asp:ListItem Text="Java"></asp:ListItem>
                                    <asp:ListItem Text=".Net"></asp:ListItem>
                                    <asp:ListItem Text="Unix"></asp:ListItem>
                                    <asp:ListItem Text="Cobol"></asp:ListItem>
                                    <asp:ListItem Text="Oracle"></asp:ListItem>
                                     <asp:ListItem Text="SAP"></asp:ListItem>




                                </asp:DropDownList>
                                </div>
                                 </td>
                                </tr>
                                    <tr>

                                    <td class="auto-style1">
                                         <div style="margin-bottom: 25px" class="input-group">
                            <asp:Label ID="lblIsFresher" Text="Fresher / Experienced" runat="server"></asp:Label>
                                             </div>
                                    </td>
                                    <td>
                                         <div style="margin-bottom: 25px" class="input-group">
                                             <asp:RadioButtonList ID="rblIsFresher" runat="server" Height="20px" Width="200px"  RepeatDirection="Horizontal" OnSelectedIndexChanged="rblIsFresher_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Text="Fresher"></asp:ListItem>
                                    <asp:ListItem Text="Experienced"></asp:ListItem>
                                </asp:RadioButtonList>
                                             <asp:RequiredFieldValidator ID="rfvExp" runat="server" ControlToValidate="rblIsFresher" ForeColor="#ff0000" ErrorMessage="Select one option"></asp:RequiredFieldValidator>
                                         </div>
                                    </td>
                                </tr>
                                 <tr>
                                    <td class="auto-style1">
                                        <div style="margin-bottom: 25px" class="input-group">
                            <asp:Label ID="lblExperience" Text="Experience " runat="server"></asp:Label>
                              </div>
                                    </td>
                                     <td>

                                         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                             <ContentTemplate>


                                                 <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                                     <asp:TextBox ID="txtExperience" runat="server" Height="30px" Width="273px" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                                     &nbsp;
                                                     <asp:RequiredFieldValidator ID="rfvExp1" ControlToValidate="txtExperience" ForeColor="Red" runat="server" ErrorMessage="Enter a number"></asp:RequiredFieldValidator>
                                            <asp:RangeValidator Type="Integer" ID="rvExp" runat="server" ErrorMessage="Enter valid number" ForeColor="Red" ControlToValidate="txtExperience" MaximumValue="99" MinimumValue="0"></asp:RangeValidator>
                                                 </div>
                                             </ContentTemplate>
                                         </asp:UpdatePanel>
                                     </td>


                                     


                                </tr>
                                           <tr>
                                    <td class="auto-style1">
                                        <div style="margin-bottom: 25px" class="input-group">
                            <asp:Label ID="lblLocation" Text="Location" runat="server"></asp:Label>
                              </div>
                                              </td>
                                    <td>
                                         <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                                <asp:DropDownList ID="ddlLocation" runat="server" Width="273px">
                                    
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
                               </div>
                                    </td>
                                </tr>
                                          
                                          <tr>
                                    <td class="auto-style1">
                                         <div style="margin-bottom: 25px" class="input-group">
                            <asp:Label ID="lblDomain" Text="Domain" runat="server"></asp:Label>
                              </div>
                                    </td>
                                    <td>
                                        <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                               <asp:DropDownList ID="ddlDomain" runat="server" Width="273px">
                                   
                                <asp:ListItem Text="ER"></asp:ListItem>
                                <asp:ListItem Text="BFS"></asp:ListItem>
                                <asp:ListItem Text="EntSol"></asp:ListItem>
                                <asp:ListItem Text="MFG"></asp:ListItem>
                                <asp:ListItem Text="GE"></asp:ListItem>
                                <asp:ListItem Text="LS"></asp:ListItem>
                                <asp:ListItem Text="TTH"></asp:ListItem>




                                </asp:DropDownList>
                               </div>
                                    </td>
                                </tr>
                                           <tr>
                                    <td class="auto-style1">
                                    <div style="margin-bottom: 25px" class="input-group">
                            <asp:Label ID="lblReqDate" Text="Required By Date" runat="server"></asp:Label>
                              </div>
                                    </td>
                                    <td>

                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                          <div style="margin-bottom: 25px; text-align: left;" class="input-group">
                               <asp:TextBox ID="txtDate" runat="server" Height="30px" Width="273px" TextMode="Date" OnTextChanged="txtDate_TextChanged" AutoPostBack="true"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Date is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                                </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                  <tr>
                                    <td class="auto-style1">
<div style="margin-top:10px" class="form-group">
                                    <!-- Button -->
                            </div>
                                    <div>
                                        <asp:Button ID="btnSubmit" CssClass="btn-success" runat="server" Text="Submit" UseSubmitBehavior="False" OnClick="btnSubmit_Click" />
                                </div>
                                    </td>
                                      <td class="auto-style1">
<div style="margin-top:10px" class="form-group">
                                    <!-- Button -->
                            </div>
                                    <div>
                                        <asp:Button ID="btnCancel" CssClass="btn-danger" runat="server" Text="Cancel" CausesValidation="false" UseSubmitBehavior="False" OnClick="btnCancel_Click" />
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












    </div>

</asp:Content>
