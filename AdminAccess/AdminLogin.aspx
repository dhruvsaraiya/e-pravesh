<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAccess/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="e_Pravesh.AdminAccess.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>e-Pravesh Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    

    <style type="text/css">
        .auto-style5 {
            font-size: medium;
        }
        .auto-style6 {
            width: 140px;
            text-align: right;
        }
        .auto-style8 {
            font-size: xx-large;
            color: #2A61A3;
            width: 371px;
            height: 72px;
        }
        .auto-style11 {
            font-size: medium;
            text-align: right;
        }
        .auto-style12 {
            text-align: right;
            height: 72px;
        }
        .auto-style14 {
            width: 371px
        }
        .auto-style15 {
            font-size: x-large;
            color: #A5916F;
            width: 371px;
        }
        .auto-style16 {
            font-size: medium;
            text-align: right;
            height: 63px;
        }
        .auto-style17 {
            font-size: x-large;
            color: #A5916F;
            width: 371px;
            height: 63px;
        }
        .auto-style19 {
            font-size: x-large;
            color: #A5916F;
            width: 37px;
            height: 63px;
        }
        .auto-style20 {
            font-size: xx-large;
            color: #2A61A3;
            width: 37px;
            height: 72px;
        }
        .auto-style21 {
            font-size: x-large;
            color: #A5916F;
            width: 37px;
        }
        .auto-style22 {
            width: 37px
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
                  
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                    <li>  <a href="SetRound.aspx"> Set Round </a></li>
                        
                           <li class=""> <a class="dropdown-toggle" data-toggle="dropdown" href="#"> College Details <span class="caret"></span></a>
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
                        <li class="active">
                           <a href="AdminLogin.aspx" ><span class="glyphicon glyphicon-log-out"></span> Admin</a>
                           
                        </li>
                        <li>
                           <a href="../StudentAccess/index.aspx"><span class=""></span> Home </a>
                           
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
          <div class="box box-primary" style="width: 832px; left: 66px; top: -1px; height: 495px;">
        <div class="box-body text-center">


        <asp:Panel ID="Panel1" runat="server" Height="407px" CssClass="auto-style5" Width="713px">
                    <table >
                <tr>
                    <td class="auto-style6" ></td>
                    <td class="auto-style14">
                        <asp:Label ID="invalidLabel" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                
                <tr>
                    <td class="auto-style16" >Username:&nbsp;&nbsp; </td>
                    <td class="auto-style17" >
                        <asp:TextBox class="form-control" ID="usernameTxt" runat="server" Width="309px" ></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="usernameTxt" CssClass="auto-style5" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" >Password:&nbsp;&nbsp; </td>
                    <td class="auto-style8">
                        <asp:TextBox class="form-control" ID="passwordTxt" runat="server" TextMode="Password" Width="310px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="passwordTxt" CssClass="auto-style5" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
              
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Image ID="Image2" runat="server" Height="39px" Width="121px" ImageUrl="~/Captcha.aspx" AlternateText="Captcha Image" />
                    </td>
                    <td class="auto-style21">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" ></td>
                    <td class="auto-style15" >
                        <asp:Label ID="captchaLabel" runat="server" CssClass="auto-style5"></asp:Label>
                    </td>
                    <td class="auto-style21">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" >Captcha :&nbsp;&nbsp; </td>
                    <td class="auto-style15">
                        <asp:TextBox class="form-control" ID="captchaTxt" runat="server" Width="309px"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="captchaTxt" CssClass="auto-style5" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" >&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" ForeColor="White" Height="33px" Width="69px" />
                    </td>
                    <td class="auto-style21">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    <br class="auto-style5"/>

    </form>

</asp:Content>
