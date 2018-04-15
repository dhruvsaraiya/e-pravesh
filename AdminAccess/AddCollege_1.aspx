<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAccess/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCollege_1.aspx.cs" Inherits="e_Pravesh.Admin.WebForm5" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>e-Pravesh Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../css/Layout.css" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style4 {
            width: 83px;
        }
        .auto-style5 {
            height: 20px;
            width: 175px;
        }
        .auto-style6 {
            height: 20px;
            width: 219px;
            text-align: right;
        }
        .auto-style7 {
            width: 219px;
            text-align: right;
        }
        .auto-style8 {
            width: 219px;
            height: 29px;
            text-align: right;
        }
        .auto-style10 {
            width: 159px;
            text-align: right;
        }
        .auto-style12 {
            width: 142px;
        }
        .auto-style26 {
            height: 29px;
            width: 175px;
        }
        .auto-style27 {
            width: 175px;
        }
        .auto-style28 {
            width: 219px;
            height: 23px;
            text-align: right;
        }
        .auto-style30 {
            width: 175px;
            height: 23px;
        }
        .auto-style31 {
            width: 142px;
            text-align: right;
        }
        .auto-style32 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 644px;
            left: 102px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style33 {
            height: 20px;
            width: 268px;
        }
        .auto-style35 {
            width: 268px;
            height: 23px;
        }
        .auto-style37 {
            width: 268px;
        }
        .auto-style38 {
            height: 29px;
            width: 268px;
        }
        .auto-style39 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 577px;
            left: 143px;
            top: -2px;
            height: 499px;
            padding-left: 15px;
            padding-right: 15px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="background-color:#c3c1c1">
    
       <asp:Panel ID="Panel1" runat="server" Height="350px">
    
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
                   
                </div>
            </div>
        </nav>
        
        <br />
    <br/>
             <div class="row">
        <div class="auto-style32">

          <!-- Profile Image -->
          <div class="box box-primary">
        <div class="box-body">

            <table>
            <tr>
                <td class="auto-style6">College Name:</td>
                <td class="auto-style33">
                    <asp:TextBox class="form-control" ID="collegeTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="collegeTextBox" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">City:</td>
                <td class="auto-style37">
                    <asp:TextBox class="form-control" ID="cityTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cityTextBox" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style27">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Email_id:</td>
                <td class="auto-style37">
                    <asp:TextBox class="form-control" ID="emailTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Invalid Email ID " ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="err"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style35"></td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style8">Contact_no:</td>
                <td class="auto-style38">
                    <asp:TextBox class="form-control" ID="contactTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="contactTextBox" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="contactTextBox" ErrorMessage="Invalid Contact Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" ValidationGroup="err" Visible="False"> </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style38">
                    </td>
                <td class="auto-style26"></td>
            </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style38">
                    <asp:Button class="btn btn-primary" ID="branchaddButton" runat="server" Text="Add Branches" OnClick="Button1_Click" />
                </td>
                <td class="auto-style26"></td>
            </tr>
        </table>
    </div></div></div></div>
       </asp:Panel>
       <strong>
    <br />
    <br />
           <br />
           <br />
           <br />
    <br />
           <br />
           <br />
           <br />
       </strong>

    <asp:Panel ID="Panel2" runat="server" Height="500px">
       <div class="row">
        <div class="auto-style39">

          <!-- Profile Image -->
          <div class="box box-primary">
        <div class="box-body">

        <table class="nav-justified">
            <tr>
                <td class="auto-style10">
                    <br />
                    Program :
                    <br />
                    <br />
                </td>
                <td class="auto-style12">
                    <asp:DropDownList class="form-control" ID="programDropDownList" runat="server" DataSourceID="SqlDataSource3" DataTextField="program_name" DataValueField="program_id" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Program]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Branch Name:</td>
                <td class="auto-style12">
                    <asp:DropDownList class="form-control" ID="branchDropDownList" runat="server" DataSourceID="SqlDataSource2" DataTextField="branch_name" DataValueField="branch_id" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Branch.branch_id, Branch.branch_name FROM Branch_Program INNER JOIN Branch ON Branch_Program.branch_id = Branch.branch_id WHERE (Branch_Program.program_id = @program_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="programDropDownList" Name="program_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">No Of Seats:</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style31">SC:</td>
                <td>
                    <asp:TextBox class="form-control" ID="scTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style31">ST:</td>
                <td>
                    <asp:TextBox class="form-control" ID="stTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style31">OBC:</td>
                <td>
                    <asp:TextBox class="form-control" ID="obcTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style31">GENERAL:</td>
                <td>
                    <asp:TextBox class="form-control" ID="genTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button class="btn btn-primary" ID="Button2" runat="server" OnClick="Button2_Click" Text="Finish" ForeColor="White" Height="35px" Width="65px" />
                </td>
                <td>
                    <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="AddBranch" OnClick="Button3_Click" ForeColor="White" Height="37px" Width="111px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
         </div></div></div></div>
    </asp:Panel>
    </form>
</asp:Content>
