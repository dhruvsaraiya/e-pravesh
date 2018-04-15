<%@ Page Title="" Language="C#" MasterPageFile="~/StudentAccess/StudentMaster.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="e_Pravesh.Student.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Registration</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../css/Layout.css" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <style type="text/css">
        .auto-style15 {
            text-align: right;
            width: 203px;
        }
        .auto-style16 {
            width: 358px;
        }
        .auto-style17 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 25%;
            left: 231px;
            top: 43px;
            padding-left: 15px;
            padding-right: 15px;
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
                    <a class="navbar-brand" href="#">e-Pravesh</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class=""><a href="#">Home</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Instruction<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Guideline</a></li>
                                <li><a href="#">Notification</a></li>
                                <li><a href="#">List of Institutes</a></li>
                                <li><a href="#">Seat Matrix</a></li>
                                <li><a href="#">Eligibility Criteria</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Fee<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Registration Fee</a></li>
                                <li><a href="#">Tution Fee</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Counselling Scheduler<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Engineering</a></li>
                                <li><a href="#">Degree Pharmacy</a></li>
                                <li><a href="#">MBA/MCA</a></li>
                                <li><a href="#">Medical</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Result Analysis<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Engineering</a></li>
                                <li><a href="#">Degree Pharmacy</a></li>
                                <li><a href="#">MBA/MCA</a></li>
                                <li><a href="#">Medical</a></li>
                            </ul>
                                 </li>
                        </ul>
                             <ul class="nav navbar-nav navbar-right">
                        <li><a href="register.aspx"><span class="glyphicon glyphicon-user active"></span>Registration</a></li>
                        <li>
                           <a href="login.aspx"><span class="glyphicon glyphicon-log-in"></span>Student</a>
                           
                                                </li>
                    </ul>
                </div>
            </div>
        </nav>
        
       <div class="row">
        <div class="auto-style17">

          <!-- Profile Image -->
          <div class="box box-primary" style="left: -178px; top: -18px; width: 257%; height: 620px">
        <div class="box-body">

        <table >
            <tr>
                <td class="auto-style15" >&nbsp;</td>
                <td class="auto-style16">
                    <asp:Label ID="invalidLabel" runat="server" ForeColor="Red"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15" >Course : </td>
                <td class="auto-style16">
                    <asp:DropDownList class="form-control dropdown-toggle" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="program_name" DataValueField="program_id">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [program_id], [program_name] FROM [Program]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" ></td>
                <td class="auto-style16" >&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15" >HSC Roll No : </td>
                <td class="auto-style16">
                    <asp:TextBox class="form-control" ID="usernameTxt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernameTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" ></td>
                <td class="auto-style16" ></td>
            </tr>
            <tr>
                <td class="auto-style15" >Password : </td>
                <td class="auto-style16">
                    <asp:TextBox ID="passwordTxt" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" ></td>
                <td class="auto-style16" ></td>
            </tr>
            <tr>
                <td class="auto-style15" >Confirm Password : </td>
                <td class="auto-style16">
                    <asp:TextBox ID="cnfPasswordTxt" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cnfPasswordTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTxt" ControlToValidate="cnfPasswordTxt" SetFocusOnError="True" ErrorMessage="Both Password Should Match!! " ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" ></td>
                <td class="auto-style16" ></td>
            </tr>
            <tr>
                <td class="auto-style15" >Captcha : </td>
                <td class="auto-style16">
                    <asp:TextBox ID="captchaTxt" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="captchaTxt" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" ></td>
                <td class="auto-style16" >
                    <asp:Label ID="captchaLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Image ID="Image2" runat="server" Height="38px" Width="157px" ImageUrl="~/Captcha.aspx" AlternateText="Captcha Image"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Height="31px" Width="81px" ForeColor="White" />
                </td>
            </tr>
            </table>

        </div>
</div>
            </div>
           </div>
        <br />
            
    </form >


    




</asp:Content>
