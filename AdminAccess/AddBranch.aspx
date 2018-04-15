<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAccess/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddBranch.aspx.cs" Inherits="e_Pravesh.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>e-Pravesh Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    

    <style type="text/css">
        .auto-style14 {
            width: 329px;
        }
        .auto-style15 {
            width: 164px;
            text-align: right;
        }
    </style>
     <link href="../css/Layout.css" rel="stylesheet" type="text/css" />
       <style type="text/css">
        .auto-style4 {
            width: 83px;
        }
        .auto-style10 {
               width: 170px;
               text-align: right;
           }
        .auto-style12 {
               width: 182px;
           }
        .auto-style13 {
            width: 170px;
            height: 13px;
            text-align: right;
        }
        .auto-style14 {
            width: 142px;
            height: 13px;
        }
        .auto-style15 {
            height: 13px;
            width: 232px;
        }
        .auto-style16 {
            width: 170px;
            height: 20px;
            text-align: right;
        }
        .auto-style17 {
            width: 182px;
            height: 20px;
        }
        .auto-style18 {
            height: 20px;
            width: 232px;
        }
        .auto-style19 {
            width: 170px;
            height: 23px;
            text-align: right;
        }
        .auto-style20 {
            width: 182px;
            height: 23px;
        }
        .auto-style21 {
            height: 23px;
            width: 232px;
        }
        .auto-style22 {
            width: 170px;
            height: 30px;
            text-align: right;
        }
        .auto-style23 {
            width: 182px;
            height: 30px;
            text-align: right;
        }
        .auto-style24 {
            height: 30px;
            width: 232px;
        }
        .auto-style26 {
            width: 232px;
        }
        .auto-style27 {
               width: 182px;
               text-align: right;
           }
           .auto-style28 {
               width: 93%;
               height: 607px;
           }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <form id="form1" runat="server" style="background-color:#c3c1c1">
            <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                  
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                    <li>  <a href="SetRound.aspx"> Set Round </a></li>
                        
                           <li class="active"> <a class="dropdown-toggle" data-toggle="dropdown" href="#"> College Details <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="AddCollege_1.aspx"> Add College</a></li>
                                <li><a href="AddBranch.aspx"> Add Branch</a></li>
                                <li><a href="ShowDetails.aspx"> Show Details </a></li>
                                <li><a href="EditDetails.aspx"> Edit Details </a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            
                                <a href="Event.aspx"> News & Events </a>
                            
                        </li>
                        <li class="dropdown">
                            <a href="#"> Generate Rank </a>
                        </li>
                        
                    </ul>
                   <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="login.aspx"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
                           
                        </li>
                    </ul>
                    <p>
                        &nbsp;</p>
                   
                </div>
            </div>
        </nav>
        <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary" style="left: 133px; top: -4px; width: 200%; height: 670px; margin-top: 5px">
        <div class="box-body">

        <br />
    <br/>
          
        <table class="auto-style28">
            <tr>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="errLabel" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">College : </td>
                <td class="auto-style14">
                    <asp:DropDownList class="form-control" ID="collegeDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="college_name" DataValueField="college_id" AutoPostBack="True" Width="181px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style15">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [college_id], [college_name] FROM [College] ORDER BY [college_name]"></asp:SqlDataSource>
                </td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <br />
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Program : </td>
                <td class="auto-style12">
                    <asp:DropDownList class="form-control" ID="programDropDownList" runat="server" DataSourceID="SqlDataSource3" DataTextField="program_name" DataValueField="program_id" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style26">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT College_Program.reference_no, Program.program_name, Program.program_id FROM College_Program INNER JOIN Program ON College_Program.program_id = Program.program_id WHERE (College_Program.college_id = @college_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="collegeDropDownList" Name="college_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Branch Name:</td>
                <td class="auto-style12">
                    <asp:DropDownList class="form-control" ID="branchDropDownList" runat="server" DataSourceID="SqlDataSource2" DataTextField="branch_name" DataValueField="branch_id" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style26">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Branch.branch_name, Branch.branch_id FROM Branch_Program INNER JOIN Branch ON Branch_Program.branch_id = Branch.branch_id WHERE (Branch_Program.program_id = @program_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="programDropDownList" Name="program_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">No Of Seats:</td>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style27">SC:</td>
                <td class="auto-style26">
                    <asp:TextBox class="form-control" ID="scTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="scTextBox" ErrorMessage="Required Field" ForeColor="Red" ValidationGroup="seat">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="scTextBox" ErrorMessage="Number Only" ForeColor="Red" ToolTip="Numbers Only" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">ST:</td>
                <td class="auto-style24">
                    <asp:TextBox class="form-control" ID="stTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="stTextBox" ErrorMessage="Required Field" ForeColor="Red" ValidationGroup="seat">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="stTextBox" ErrorMessage="Number Only" ForeColor="Red" ToolTip="Numbers Only" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style27">OBC:</td>
                <td class="auto-style26">
                    <asp:TextBox class="form-control" ID="obcTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="obcTextBox" ErrorMessage="Required Field" ForeColor="Red" ValidationGroup="seat">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="obcTextBox" ErrorMessage="Number Only" ForeColor="Red" ToolTip="Numbers Only" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style27">GENERAL:</td>
                <td class="auto-style26">
                    <asp:TextBox class="form-control" ID="generalTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="generalTextBox" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="generalTextBox" ErrorMessage="Number Only" ForeColor="Red" ToolTip="Nembers Only" ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button class="btn btn-primary" ID="finishButton" runat="server" Text="Finish" OnClick="finishButton_Click" ForeColor="White" Height="36px" Width="73px" />
                </td>
                <td class="auto-style26">
                    <asp:Button class="btn btn-primary" ID="addbranchButton" runat="server" Text="AddBranch" OnClick="addbranchButton_Click" ForeColor="White" Height="36px" Width="112px" />
                </td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
        </table>
         </div></div></div></div>
    
    </form>
</asp:Content>
