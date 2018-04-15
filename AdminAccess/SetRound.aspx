<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAccess/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SetRound.aspx.cs" Inherits="e_Pravesh.Admin.WebForm3" %>
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
        }
        .auto-style6 {
            height: 20px;
            width: 157px;
            text-align: right;
        }
        .auto-style7 {
            width: 157px;
            text-align: right;
        }
        .auto-style8 {
            height: 20px;
            width: 298px;
        }
        .auto-style9 {
            width: 298px;
        }
        .auto-style10 {
            position: relative;
            min-height: 1px;
            float: left;
            width: -2147483648%;
            left: 70px;
            top: 10px;
            margin-top: 9px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style11 {
            height: 20px;
            width: 298px;
            text-align: center;
        }
        .auto-style12 {
            font-size: x-large;
        }
        .auto-style13 {
            width: 298px;
            text-align: center;
        }
        </style>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                      <li class="active"><a href="SetRound.aspx"> Set Round </a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"> College Details <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="AddCollege_1.aspx"> Add College</a></li>
                                <li><a href="ShowDetails.aspx"> Show Details </a></li>
                                <li><a href="EditDetails.aspx"> Edit Details </a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            
                                <a href="Event.aspx"> News & Events </a>
                            
                        </li>
                        <li class="dropdown">
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
          <div class="row">
        <div class="auto-style10">

          <!-- Profile Image -->
          <div class="box box-primary" style="left: 0px; top: 0px; width: 113%">
        <div class="box-body">

        <table class="nav-justified">
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="errLabel" runat="server" ForeColor="Red"></asp:Label>
                    <asp:Label ID="okLabel" runat="server" ForeColor="#009900"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    Program : </td>
                <td class="auto-style8">
                    <asp:DropDownList class="form-control" ID="programDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="program_name" DataValueField="program_id">
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [program_id], [program_name] FROM [Program] ORDER BY [program_id]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    Round No. :</td>
                <td class="auto-style8">
                    <asp:DropDownList class="form-control" ID="roundDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="round_id" DataValueField="round_id">
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [round_id] FROM [Round] WHERE ([program_id] = @program_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="programDropDownList" Name="program_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style11">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Start Date" CssClass="auto-style12"></asp:Label>
                    </strong></td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13"><strong>
                    <asp:Label ID="Label2" runat="server" Text="End Date" CssClass="auto-style12"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style9">
                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style8"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Set" OnClick="Button1_Click" Height="31px" Width="61px" ForeColor="White" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </div></div></div></div>        <br />
        </form>
</asp:Content>

