<%@ Page Title="" Language="C#" MasterPageFile="~/StudentAccess/StudentMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="e_Pravesh.Student.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>e-Pravesh Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    

    <link href="../css/Layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style14 {
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            border-bottom-right-radius: 3px;
            border-bottom-left-radius: 3px;
            padding: 10px;
            height: 21px;
        }
        .auto-style15 {
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            border-bottom-right-radius: 3px;
            border-bottom-left-radius: 3px;
            padding: 10px;
            height: 21px;
            width: 545px;
        }
    </style>
   
</asp:Content>
   
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form style="background-color:#bdb9b9" id="form1" runat="server">

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
                        <li class="active"><a href="#">Home</a></li>
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
                        <li><a href="register.aspx"><span class="glyphicon glyphicon-user"></span>Registration</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Login<span class="glyphicon glyphicon-log-in"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="login.aspx">Student</a></li>
                                <li><a href="../AdminAccess/AdminLogin.aspx">Admin</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <br />
          <div class="box box-primary" style="left: 0px; top: 0px; width: 73%; height: 410px">
        <div class="box-body">

        <div class="auto-style15">

            About Us:<br />
            <br />
            </div>
            <br />
            <br />
            <br />
            ABCDEFGABCDEFGABCDEFGABCDEFGABCDEFGABCDEFGABCDEF<br />
            ABCDEFGABCDEFGABCDEFGABCDEFGABCDEFGABCDEFGABCDEF<br />
            ABCDEFGABCDEFGABCDEFGABCDEFGABCDEFGABCDEFGABCDEF<br />
            ABCDEFGABCDEFGABCDEFGABCDEFGABCDEFGABCDEFGABCDEF<br />
            ABCDEFGABCDEFGABCDEFGABCDEFGABCDEFGABCDEFGABCDEF</div></div>
           <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary right-side" style="left: 915px; top: -433px; width: 100%; height: 415px; margin-top: 0px;">
        <div class="auto-style14 right-side">

            News and Event :<br />
            <br />
            </div></div></div></div>
    </form>



</asp:Content>
