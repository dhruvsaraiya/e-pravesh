<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAccess/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditDetails.aspx.cs" Inherits="e_Pravesh.Admin.WebForm6" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
            height: 30px;
            width: 259px;
        }
        .auto-style8 {
            height: 30px;
            text-align: right;
            width: 157px;
        }
        .auto-style11 {
            height: 30px;
            text-align: right;
            width: 280px;
        }
        .auto-style12 {
            height: 23px;
            width: 280px;
        }
        .auto-style14 {
            height: 30px;
            width: 280px;
        }
        .auto-style16 {
            height: 23px;
            width: 259px;
        }
        .auto-style17 {
            height: 23px;
            text-align: right;
            width: 157px;
        }
        .auto-style18 {
            height: 44px;
            text-align: right;
            width: 157px;
        }
        .auto-style19 {
            height: 44px;
            width: 259px;
        }
        .auto-style20 {
            height: 44px;
            width: 280px;
        }
        .auto-style21 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 771px;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style22 {
            margin-top: 35px;
        }
        .auto-style23 {
            width: 259px;
        }
        </style>
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
                                <li><a href="EditDetails.asspx"> Edit Details </a></li>
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
                        <li>
                           <a href="login.aspx"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
                           
                        </li>
                    </ul>
                   
                </div>
            </div>
        </nav>
        
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <br/>
       
        
                <asp:Panel ID="Panel1" runat="server" Height="272px">
                      <div class="row">
        <div class="auto-style21">

          <!-- Profile Image -->
          <div class="box box-primary" style="left: 72px; top: 2px; width: 96%">
        <div class="box-body">

            <table>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Program:</td>
                    <td class="auto-style23">
                        <asp:DropDownList class="form-control" ID="programDropDownList" runat="server" DataSourceID="SqlDataSource5" DataTextField="program_name" DataValueField="program_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11">
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Program]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Branch:</td>
                    <td class="auto-style16">
                        <asp:DropDownList class="form-control" ID="branchDropDownList" runat="server" DataSourceID="SqlDataSource6" DataTextField="branch_name" DataValueField="branch_id" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style12">
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Branch.branch_name, Branch.branch_id FROM Branch_Program INNER JOIN Branch ON Branch_Program.branch_id = Branch.branch_id WHERE (Branch_Program.program_id = @program_id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="programDropDownList" Name="program_id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">College:</td>
                    <td class="auto-style19">
                        <asp:DropDownList class="form-control" ID="collegeDropDownList" runat="server" DataSourceID="SqlDataSource7" DataTextField="college_name" DataValueField="college_id" Height="31px" AutoPostBack="True" Width="257px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style20">
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT College.college_id, College.college_name FROM Branch_College INNER JOIN College ON Branch_College.college_id = College.college_id WHERE (Branch_College.branch_id = @branch_id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="branchDropDownList" Name="branch_id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click1" Text="Edit Details" BorderStyle="Groove" ForeColor="White" Height="31px" Width="116px" />
                    </td>
                    <td class="auto-style14"></td>
                </tr>
            </table>
            </div></div></div></div>
        </asp:Panel>
        <br />
        <br />
        <br />

                <asp:Panel ID="Panel2" runat="server" Height="420px" CssClass="auto-style22" Width="796px">
                      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary" style="left: 78px; top: 4px; width: 450%">
        <div class="box-body">

                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Branch_College] WHERE [branch_id] = @branch_id AND [college_id] = @college_id AND [program_id] = @program_id" InsertCommand="INSERT INTO [Branch_College] ([branch_id], [college_id], [program_id], [general], [obc], [sc], [st]) VALUES (@branch_id, @college_id, @program_id, @general, @obc, @sc, @st)" SelectCommand="SELECT * FROM [Branch_College] WHERE (([branch_id] = @branch_id) AND ([college_id] = @college_id) AND ([program_id] = @program_id))" UpdateCommand="UPDATE [Branch_College] SET [general] = @general, [obc] = @obc, [sc] = @sc, [st] = @st WHERE [branch_id] = @branch_id AND [college_id] = @college_id AND [program_id] = @program_id">
                        <DeleteParameters>
                            <asp:Parameter Name="branch_id" Type="Int32" />
                            <asp:Parameter Name="college_id" Type="Int32" />
                            <asp:Parameter Name="program_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="branch_id" Type="Int32" />
                            <asp:Parameter Name="college_id" Type="Int32" />
                            <asp:Parameter Name="program_id" Type="Int32" />
                            <asp:Parameter Name="general" Type="Int32" />
                            <asp:Parameter Name="obc" Type="Int32" />
                            <asp:Parameter Name="sc" Type="Int32" />
                            <asp:Parameter Name="st" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="branchDropDownList" Name="branch_id" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="collegeDropDownList" Name="college_id" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="programDropDownList" Name="program_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="general" Type="Int32" />
                            <asp:Parameter Name="obc" Type="Int32" />
                            <asp:Parameter Name="sc" Type="Int32" />
                            <asp:Parameter Name="st" Type="Int32" />
                            <asp:Parameter Name="branch_id" Type="Int32" />
                            <asp:Parameter Name="college_id" Type="Int32" />
                            <asp:Parameter Name="program_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="branch_id,college_id,program_id" DataSourceID="SqlDataSource8" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="484px">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="general" HeaderText="General" SortExpression="general" />
                            <asp:BoundField DataField="obc" HeaderText="OBC" SortExpression="obc" />
                            <asp:BoundField DataField="sc" HeaderText="SC" SortExpression="sc" />
                            <asp:BoundField DataField="st" HeaderText="ST" SortExpression="st" />
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
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="college_id" DataSourceID="SqlDataSource9" GridLines="Both">
                        <EditItemTemplate>
                            college_id:
                            <asp:Label ID="college_idLabel1" runat="server" Text='<%# Eval("college_id") %>' />
                            <br />
                            college_name:
                            <asp:TextBox ID="college_nameTextBox" runat="server" Text='<%# Bind("college_name") %>' />
                            <br />
                            city:
                            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            email_id:
                            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
                            <br />
                            contact_no:
                            <asp:TextBox ID="contact_noTextBox" runat="server" Text='<%# Bind("contact_no") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            college_name:
                            <asp:TextBox ID="college_nameTextBox" runat="server" Text='<%# Bind("college_name") %>' />
                            <br />
                            city:
                            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            email_id:
                            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
                            <br />
                            contact_no:
                            <asp:TextBox ID="contact_noTextBox" runat="server" Text='<%# Bind("contact_no") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            college_id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="college_idLabel" runat="server" Enabled="False" Text='<%# Eval("college_id") %>' />
                            <br />
                            college_name:
                            <asp:Label ID="college_nameLabel" runat="server" Text='<%# Bind("college_name") %>' />
                            <br />
                            city:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            email_id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="email_idLabel" runat="server" Text='<%# Bind("email_id") %>' />
                            <br />
                            contact_no:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="contact_noLabel" runat="server" Text='<%# Bind("contact_no") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        </ItemTemplate>
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [College] WHERE [college_id] = @college_id" InsertCommand="INSERT INTO [College] ([college_name], [city], [email_id], [contact_no]) VALUES (@college_name, @city, @email_id, @contact_no)" SelectCommand="SELECT * FROM [College] WHERE ([college_id] = @college_id)" UpdateCommand="UPDATE [College] SET [college_name] = @college_name, [city] = @city, [email_id] = @email_id, [contact_no] = @contact_no WHERE [college_id] = @college_id">
                        <DeleteParameters>
                            <asp:Parameter Name="college_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="college_name" Type="String" />
                            <asp:Parameter Name="city" Type="String" />
                            <asp:Parameter Name="email_id" Type="String" />
                            <asp:Parameter Name="contact_no" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="collegeDropDownList" Name="college_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="college_name" Type="String" />
                            <asp:Parameter Name="city" Type="String" />
                            <asp:Parameter Name="email_id" Type="String" />
                            <asp:Parameter Name="contact_no" Type="String" />
                            <asp:Parameter Name="college_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
            </div></div></div></div>
        </asp:Panel>

                     
        
        <br/>

        <br/>
        
       
    
    </form>

</asp:Content>
