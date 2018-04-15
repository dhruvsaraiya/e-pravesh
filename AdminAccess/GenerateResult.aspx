<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAccess/AdminMaster.Master" AutoEventWireup="true" CodeBehind="GenerateResult.aspx.cs" Inherits="e_Pravesh.AdminAccess.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>e-Pravesh Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
   
        .auto-style5 {
            width: 409px;
            height: 63px;
            text-align: right;
        }
        .auto-style6 {
            height: 63px;
            width: 67px;
        }
        .auto-style7 {
            width: 409px;
            font-size: x-large;
            color: #A5916F;
        }
        .auto-style8 {
            width: 409px;
            text-align: center;
            font-size: xx-large;
            color: #2A61A3;
        }
        .auto-style9 {
            height: 63px;
            width: 486px;
        }
        .auto-style10 {
            width: 486px;
        }
        .auto-style11 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 859px;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style12 {
            width: 67px;
        }
        .auto-style13 {
            color: #A5916F;
            width: 67px;
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
                        <li class="active">
                            <a href="GenerateRank.aspx"> Generate Rank </a>
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
        <br />
        <div class="row">
        <div class="auto-style11">

          <!-- Profile Image -->
          <div class="box box-primary" style="left: 0px; top: 0px; width: 108%">
        <div class="box-body">

    <br/>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Select Program :</td>
                <td class="auto-style9">&nbsp;<asp:DropDownList class="form-control" ID="progDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="program_name" DataValueField="program_id" Height="42px" Width="240px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [program_id], [program_name] FROM [Program]"></asp:SqlDataSource>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button class="btn btn-primary" ID="grButton" runat="server" OnClick="grButton_Click" Text="Generate Result" ForeColor="White" Height="43px" Width="157px" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button class="btn btn-primary" ID="srButton" runat="server" Text="Show Result" ForeColor="White" Height="36px" Width="119px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="std_id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <Columns>
                            <asp:BoundField DataField="std_id" HeaderText="Student ID" ReadOnly="True" SortExpression="std_id" />
                            <asp:BoundField DataField="std_name" HeaderText="Name" SortExpression="std_name" />
                            <asp:BoundField DataField="round_no" HeaderText="Round" SortExpression="round_no" />
                            <asp:BoundField DataField="college_name" HeaderText="College" SortExpression="college_name" />
                            <asp:BoundField DataField="branch_name" HeaderText="Branch" SortExpression="branch_name" />
                            <asp:BoundField DataField="category_name" HeaderText="Category" SortExpression="category_name" />
                            <asp:BoundField DataField="city" HeaderText="College City" SortExpression="city" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT StudentDetails.std_id, StudentDetails.std_name, Allotment.round_no, Branch.branch_name, Category.category_name, College.city, College.college_name FROM StudentDetails INNER JOIN Allotment ON StudentDetails.std_id = Allotment.std_id INNER JOIN Category ON StudentDetails.std_category = Category.category_id CROSS JOIN Branch CROSS JOIN College WHERE (StudentDetails.program = @program)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="progDropDownList" Name="program" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        
    </form>
</asp:Content>
