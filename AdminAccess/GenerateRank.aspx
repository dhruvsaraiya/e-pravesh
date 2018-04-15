<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAccess/AdminMaster.Master" AutoEventWireup="true" CodeBehind="GenerateRank.aspx.cs" Inherits="e_Pravesh.Admin.WebForm9" %>
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
        .auto-style8 {
            margin-bottom: 20px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style11 {
            width: 268px
        }
        .auto-style12 {
            width: 125px;
            height: 20px;
        }
        .auto-style13 {
            width: 268px;
            height: 20px;
        }
        .auto-style15 {
            width: 125px;
        }
        .auto-style16 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 782px;
            left: 131px;
            top: -1px;
            padding-left: 15px;
            padding-right: 15px;
        }
        </style>

</asp:Content>

    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                      <li> <a href="SetRound.aspx"> Set Round </a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"> College Details <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="AddCollege_1.aspx"> Add College</a></li>
                                <li><a href="AddBranch.aspx"> Add Branch</a></li>
                                <li><a href="ShowDetails.aspx"> Show Details </a></li>
                                <li><a href="EditDetails.aspx"> Edit Details </a></li>
                            </ul>
                        </li>
                        <li class="">
                            
                                <a href="Event.aspx"> News & Events </a>
                            
                        </li>
                        <li class="active">
                            <a href="GenerateRank.aspx"> Generate Rank </a>
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
        <br />
           <div class="row">
        <div class="auto-style16">

          <!-- Profile Image -->
          <div class="box box-primary">
        <div class="box-body">

            <br />
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
            <table class="auto-style9">
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate Rank" ForeColor="White" Height="39px" Width="222px" />
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Show Ranks" OnClick="Button2_Click" ForeColor="White" Height="42px" Width="141px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="584px">
                            <Columns>
                                <asp:BoundField DataField="std_name" HeaderText="Student Name" SortExpression="std_name" />
                                <asp:BoundField DataField="category_name" HeaderText="Category" SortExpression="category_name" />
                                <asp:BoundField DataField="rank" HeaderText="Rank" SortExpression="rank" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT StudentDetails.std_name, StudentDetails.rank, Category.category_name FROM StudentDetails INNER JOIN Category ON StudentDetails.std_category = Category.category_id"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
            </table>

        </asp:Panel
            >
            </div></div></div></div>
         </form>
</asp:Content>
