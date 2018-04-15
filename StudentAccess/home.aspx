<%@ Page Title="" Language="C#" MasterPageFile="~/StudentAccess/StudentMaster.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="e_Pravesh.StudentAccess.WebForm3" %>
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
            height: 30px;
            width: 103px;
        }
        .auto-style2 {
            width: 206px;
        }
        .auto-style3 {
            height: 30px;
            width: 206px;
        }
        .auto-style4 {
            width: 83px;
        }
        .auto-style5 {
            width: 103px;
        }
        .auto-style6 {
            width: 103px;
            height: 23px;
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
                   </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Student Details</a></li>
                        <li class=""><a href="#">Edit Details</a></li>
                        <li class=""><a href="choiceFilling.aspx">Round</a></li>
                        <li class=""><a href="#">Result</a></li>
                        </ul>
                    <ul class="nav navbar-nav navbar-right">
                         <li><a class="active" href="logout.aspx">Logout<span class="glyphicon glyphicon-log-in"></span></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
    
    
        
    
    
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="559px">
            <br />
        </asp:Panel>
    <br/>

    </form>

</asp:Content>
