
<%@ Page Title="" Language="C#" MasterPageFile="~/StudentAccess/StudentMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="e_Pravesh.StudentAccess.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            color: #000000;
            font-size: medium;
            width: 759px;
        }
        .auto-style11 {
            text-align: left;
        }
    </style>
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
        .auto-style16 {
            position: relative;
            min-height: 1px;
            float: left;
            width: -2147483648%;
            left: 0px;
            top: 0px;
            margin-top: 10px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
    <link href="../css/Layout.css" rel="stylesheet" type="text/css" />
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
        <div class="auto-style16">

          <!-- Profile Image -->
          <div class="box box-primary" style="left: 137px; top: 10px; width: 117%">
        <div class="box-body">

            <table>
                <tr>
                    <td class="auto-style15"  ></td>
                    <td class="auto-style14" >
                        <asp:Label ID="invalidLabel" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" >Course &nbsp;:&nbsp;&nbsp; </td>
                    <td class="auto-style14" >
                        <div >
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="program_name" DataValueField="program_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [program_id], [program_name] FROM [Program]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" >Username:&nbsp;&nbsp; </td>
                    <td class="auto-style14"  >
                        <asp:TextBox class="form-control description-text" ID="usernameTxt" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="usernameTxt" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" >Password:&nbsp;&nbsp; </td>
                    <td class="auto-style14" >
                        <asp:TextBox class="form-control" ID="passwordTxt" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordTxt" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"  >15 Digit Pin:&nbsp;&nbsp; </td>
                    <td class="auto-style14"  >
                        <asp:TextBox class="form-control" ID="pinTxt" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="pinTxt">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"  >&nbsp;</td>
                    <td class="auto-style14"  >
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15" >&nbsp;</td>
                    <td class="auto-style14" >
                        <asp:Image ID="Image2" runat="server" Height="39px" Width="121px" ImageUrl="~/Captcha.aspx" AlternateText="Captcha Image" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"  ></td>
                    <td class="auto-style14"  >
                        <asp:Label ID="captchaLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"  >Captcha :&nbsp;&nbsp; </td>
                    <td class="auto-style14" >
                        <asp:TextBox class="form-control" ID="captchaTxt" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="captchaTxt" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"  >&nbsp;</td>
                    <td class="auto-style14" >
                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" ForeColor="White" Height="31px" Width="60px" />
                    </td>
                </tr>
            </table></div></div>
        </div></div>

</form>

</asp:Content>
