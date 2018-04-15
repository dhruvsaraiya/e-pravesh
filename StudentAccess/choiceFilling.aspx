<%@ Page Title="" Language="C#" MasterPageFile="~/StudentAccess/StudentMaster.Master" AutoEventWireup="true" CodeBehind="choiceFilling.aspx.cs" Inherits="e_Pravesh.StudentAccess.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>e-Pravesh Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <style type="text/css">
        .auto-style7 {
            width: 112%;
        }
        .auto-style8 {
            width: 248px;
        }
        .auto-style10 {
            width: 132px;
            text-align: center;
        }
       
        .auto-style14 {
            width: 132px;
            height: 23px;
            text-align: center;
        }
        .auto-style15 {
            width: 192px;
            height: 23px;
        }
        .auto-style17 {
            width: 248px;
            height: 225px;
        }
        .auto-style18 {
            width: 192px;
            height: 225px;
        }
        .auto-style20 {
            font-weight: normal;
        }
        .auto-style21 {
            position: relative;
            border-radius: 3px;
            background: #ffffff;
            border-top: 3px solid #d2d6de;
            margin-bottom: 20px;
            width: 113%;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
            left: 0px;
            top: 0px;
        }
        .auto-style22 {
            margin-right: 67px;
        }
        .auto-style23 {
            margin-left: 0px;
        }
        .auto-style24 {
            width: 132px;
            text-align: center;
            height: 225px;
            color: #A4926E;
            font-size: x-large;
        }
    </style>
    <link href="../css/Layout.css" rel="stylesheet" type="text/css" />
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
                        <li><a href="Logout.aspx"><span class="glyphicon glyphicon-log-in"></span> Logout </a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>
        
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
        
        <br />
        
        <div class="auto-style21">
        <div class="box-header with-border" style="left: 0px; top: 0px">
          <h3 class="box-title"><span class="auto-style20">USER ID :
                    <asp:Label ID="usernameLabel" runat="server"></asp:Label>
              </span>&nbsp;&nbsp;</h3>

        </div>
        <div class="box-body">

        <table class="auto-style7">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">Course Name :
                    <asp:Label ID="courseLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Label ID="programidLabel" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">Branch :
                    <asp:DropDownList ID="branchDropDownList" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="branch_name" DataValueField="branch_id" AutoPostBack="True" OnSelectedIndexChanged="branchDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Branch.branch_id, Branch.branch_name FROM Branch_Program INNER JOIN Branch ON Branch_Program.branch_id = Branch.branch_id WHERE (Branch_Program.program_id = @program_id) ORDER BY Branch.branch_name">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="programidLabel" DefaultValue="" Name="program_id" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="choice_id" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style22" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="330px">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                       <pagerstyle cssclass="gridview" BackColor="White" ForeColor="#000066" HorizontalAlign="Left">

                        </pagerstyle>
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                  <asp:Button ID="AddButton" class="btn btn-primary btn-block" runat="server" CommandArgument='<%# Bind("choice_id") %>' OnClick="AddButton_Click" Text="Add" ForeColor="White" Height="24px" Width="42px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="college_name" HeaderText="College" SortExpression="college_name" />
                            <asp:BoundField DataField="branch_name" HeaderText="Branch" SortExpression="branch_name" />
                        </Columns>
                        <EmptyDataTemplate>
                            Sorry No Results Found!!!<br />
                        </EmptyDataTemplate>
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT College.college_name, Branch.branch_name, Available_Choice.choice_id FROM Available_Choice INNER JOIN College ON Available_Choice.college_id = College.college_id INNER JOIN Branch ON Available_Choice.branch_id = Branch.branch_id WHERE (Available_Choice.branch_id = @branch_id) AND (Available_Choice.program_id = @program_id) AND (Available_Choice.choice_id NOT IN (SELECT choice_id FROM Student_Choice WHERE (std_id = @std_id)))">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="1" Name="branch_id" SessionField="branchid" Type="Int32" />
                            <asp:SessionParameter Name="program_id" SessionField="course" Type="Int32" />
                            <asp:SessionParameter Name="std_id" SessionField="username" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style24">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style18">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="choice_id" DataSourceID="SqlDataSource4" CssClass="auto-style23" Width="373px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <Columns>
                            <asp:BoundField DataField="college_name" HeaderText="College" SortExpression="college_name" />
                            <asp:BoundField DataField="branch_name" HeaderText="Branch" SortExpression="branch_name" />
                            <asp:TemplateField HeaderText="Remove">
                                <ItemTemplate>
                                    <asp:Button ID="removeButton" class="btn btn-primary btn-block btn-flat" runat="server" CommandArgument='<%# Bind("choice_id") %>' CommandName="remove" OnClick="removeButton_Click" Text="Remove" ForeColor="White" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Up">
                                <ItemTemplate>
                                    <asp:Button ID="upButton" class="btn btn-primary btn-block btn-flat" runat="server" CommandArgument='<%# Bind("choice_id") %>' CommandName="up" OnClick="upButton_Click" Text="UP" ForeColor="White" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Down">
                                <ItemTemplate>
                                    <asp:Button ID="downButton" class="btn btn-primary btn-block btn-flat" runat="server" CommandArgument='<%# Bind("choice_id") %>' CommandName="down" OnClick="downButton_Click" Text="Down" ForeColor="White" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            You Haven&#39;t choose any of the choices.
                        </EmptyDataTemplate>
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT College.college_name, Branch.branch_name, Available_Choice.choice_id FROM Student_Choice INNER JOIN Available_Choice ON Student_Choice.choice_id = Available_Choice.choice_id INNER JOIN College ON Available_Choice.college_id = College.college_id INNER JOIN Branch ON Available_Choice.branch_id = Branch.branch_id WHERE (Student_Choice.std_id = @std_id) ORDER BY Student_Choice.preference_no">
                        <SelectParameters>
                            <asp:SessionParameter Name="std_id" SessionField="username" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    <asp:Button ID="finishButton" class="btn btn-primary btn-block btn-flat" runat="server" OnClick="finishButton_Click" Text="Save Choices" ForeColor="White" Height="40px" Width="140px" />
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
        </table>
        
        </div>
        <!-- /.box-body -->
            </div>
        <br/>

    <br/>
    <br/>


    </form>


</asp:Content>
