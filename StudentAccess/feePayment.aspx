<%@ Page Title="" Language="C#" MasterPageFile="~/StudentAccess/StudentMaster.Master" AutoEventWireup="true" CodeBehind="feePayment.aspx.cs" Inherits="e_Pravesh.StudentAccess.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>e-Pravesh Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../css/Layout.css" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 423px;
        }
        .auto-style4 {
            width: 423px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style7 {
            width: 423px;
            text-align: center;
            height: 8px;
        }
        .auto-style8 {
            height: 8px;
        }
       
        .auto-style10 {
            height: 13px;
        }
                
    .box-header.with-border {
        border-bottom: 1px solid #f4f4f4;
    }

.box-header {
    color: #444;
    display: block;
    padding: 10px;
    position: relative;
}

    .box-body {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
    padding: 10px;
}

        .auto-style14 {
            width: 423px;
            text-align: center;
            height: 13px;
        }
        .auto-style15 {
            position: relative;
            border-radius: 3px;
            background: #ffffff;
            border-top: 3px solid #d2d6de;
            margin-bottom: 20px;
            width: 83%;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
            left: 85px;
            top: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
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
                         <li>
                           <a href="logout.aspx"><span class="glyphicon glyphicon-log-in"></span>  Logout</a>
                           
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div>
    <br/>
        </div>
        <br />
        <div class="auto-style15">
        <div class="box-header with-border">
            Welcome&nbsp;
                    <strong>
                    <asp:Label ID="usernameLabel" runat="server"></asp:Label>
            </strong>
        </div>
        <div class="box-body">
        <table class="auto-style1" >
            <tr >
                <td class="auto-style2" >&nbsp;</td>
                <td >&nbsp;</td>
            </tr>
            <tr >
                <td class="auto-style2" >&nbsp;</td>
                <td >
                    <asp:Label ID="errorLabel" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr >
                <td class="auto-style7" ></td>
                <td class="auto-style8" ></td>
            </tr>
            <tr >
                <td class="auto-style2"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pay your registration fees here </td>
                <td >&nbsp;</td>
            </tr>
            <tr >
                <td class="auto-style14" ></td>
                <td class="auto-style10" ></td>
            </tr>
            <tr >
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Payment Gateway is not Ready </td>
                <td >&nbsp;</td>
            </tr>
            <tr >
                <td class="auto-style2" >&nbsp;</td>
                <td >&nbsp;</td>
            </tr>
            <tr >
                <td class="auto-style4" >&nbsp;</td>
                <td class="auto-style5" ></td>
            </tr>
            <tr >
                <td class="auto-style2" >&nbsp;</td>
                <td >
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Pay" Height="36px" Width="69px" Font-Bold="True" ForeColor="White" />
                </td>
            </tr>
        </table>

        </div>
        <!-- /.box-body -->
            </div>
        <br />
    <br/>
    </form>
</asp:Content>
