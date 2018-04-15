<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAccess/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="e_Pravesh.Admin.WebForm8" %>
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
        .auto-style6 {
            width: 269px;
            height: 20px;
        }
        .auto-style7 {
            height: 20px;
        }
        .auto-style8 {
            width: 269px
        }
        input[type=text], select {
        height: 12px;
        padding:12px 20px;
        margin:8px 0;
        display: inline-block;
        border:1px solid #ccc;
        border-radius:4px;
        box-sizing:border-box;
        }
        .auto-style9 {
            width: 128px;
        }
        .auto-style10 {
            height: 20px;
            width: 128px;
        }
        .auto-style11 {
            width: 269px;
            text-align: right;
        }
        .auto-style12 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 25%;
            left: 99px;
            top: 4px;
            padding-left: 15px;
            padding-right: 15px;
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
                        <li class="active">
                            
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
        
        <br />
     
          <div class="row">
        <div class="auto-style12">

          <!-- Profile Image -->
          <div class="box box-primary" style="left: 0px; top: 0px; width: 339%; margin-top: 5px">
        <div class="box-body">


        <table class="nav-justified">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="event_id" DataSourceID="SqlDataSource1" Width="428px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="event_details" HeaderText="Event Details" SortExpression="event_details" />
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
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Event] WHERE [event_id] = @event_id" InsertCommand="INSERT INTO [Event] ([event_details]) VALUES (@event_details)" SelectCommand="SELECT * FROM [Event]" UpdateCommand="UPDATE [Event] SET [event_details] = @event_details WHERE [event_id] = @event_id">
                        <DeleteParameters>
                            <asp:Parameter Name="event_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="event_details" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="event_details" Type="String" />
                            <asp:Parameter Name="event_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Create New Event" ForeColor="White" Height="41px" Width="195px" />
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="errorLabel" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label1" runat="server" Text="Event Details"></asp:Label>
                </td>
                <td>
                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" Height="55px" OnTextChanged="TextBox1_TextChanged" Width="247px" ></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button class="btn btn-primary" ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Event" ForeColor="White" Height="27px" Width="106px" />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>


     


        </form>
</asp:Content>
