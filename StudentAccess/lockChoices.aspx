<%@ Page Title="" Language="C#" MasterPageFile="~/StudentAccess/StudentMaster.Master" AutoEventWireup="true" CodeBehind="lockChoices.aspx.cs" Inherits="e_Pravesh.StudentAccess.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 96%;
        }
        .auto-style9 {
            width: 291px;
        }
        .auto-style10 {
            width: 291px;
            text-align: center;
        }
        .auto-style11 {
            width: 326px;
            text-align: center;
        }
    </style>
   
       <title>e-Pravesh Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    

    <link href="../css/Layout.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" style="background-color:#c3c1c1">
        <br/>


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
                           <a href="logout.aspx"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
                           
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
       <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary box-header" style="left: 31px; top: 10px; width: 93%; margin-top: 14px">
        <div class="box-body">

            <br />
            You Have Locked Your Choices<br />
            <br />
            <table class="auto-style7">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="625px">
                            <Columns>
                                <asp:BoundField DataField="preference_no" HeaderText="Serial Number" SortExpression="preference_no" />
                                <asp:BoundField DataField="college_name" HeaderText="College" SortExpression="college_name" />
                                <asp:BoundField DataField="branch_name" HeaderText="Branch" SortExpression="branch_name" />
                                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Student_Choice.preference_no, Branch.branch_name, College.college_name, College.city FROM Student_Choice INNER JOIN Available_Choice ON Student_Choice.choice_id = Available_Choice.choice_id INNER JOIN College ON Available_Choice.college_id = College.college_id INNER JOIN Branch ON Available_Choice.branch_id = Branch.branch_id WHERE (Student_Choice.std_id = @std_id) ORDER BY Student_Choice.preference_no">
                            <SelectParameters>
                                <asp:SessionParameter Name="std_id" SessionField="username" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Button class="btn btn-primary" ID="lockButton" runat="server" OnClick="lockButton_Click" Text="Lock" ToolTip="You Cannot Modify Choices Later" ForeColor="White" Height="32px" Width="60px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Button class="btn btn-primary" ID="editButton" runat="server" OnClick="editButton_Click" Text="Edit Choices" ForeColor="White" Height="38px" Width="137px" />
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
    </form>


</asp:Content>
