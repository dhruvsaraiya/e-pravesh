<%@ Page Title="" Language="C#" MasterPageFile="~/StudentAccess/StudentMaster.Master" AutoEventWireup="true" CodeBehind="fillDetails.aspx.cs" Inherits="e_Pravesh.StudentAccess.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <title>e-Pravesh Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <style type="text/css">
   
    .auto-style15 {
        width: 220px;
    }
        .auto-style16 {
        height: 10px;
        width: 220px;
    }
        .auto-style25 {
            height: 10px;
            width: 181px;
            text-align: right;
            font-size: medium;
        }
        .auto-style26 {
            font-size: medium;
        }
        .auto-style31 {
            width: 181px;
            text-align: right;
            font-size: medium;
        }
        .auto-style32 {
            width: 181px;
            text-align: right;
        }
        .auto-style34 {
            width: 351px;
            text-align: left;
            font-size: xx-large;
            color: #2B62A5;
        }
        .auto-style35 {
            width: 351px;
        }
        .auto-style36 {
            font-size: medium;
            width: 351px;
        }
        .auto-style40 {
            width: 287px;
            text-align: right;
            font-size: medium;
        }
        .auto-style41 {
            height: 10px;
            width: 287px;
            text-align: right;
            color: #A4926E;
            font-size: x-large;
        }
        .auto-style42 {
            width: 287px;
            text-align: right;
        }
    </style>
      <title>e-Pravesh Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    

    <style type="text/css">
        .auto-style4 {
            width: 197px;
        }
        </style>
    <link href="../css/Layout.css" rel="stylesheet" type="text/css" />
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
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title" style="font-size: medium">&nbsp;</h3>

            <span class="auto-style26">Welcome
                    </span>

                    <asp:Label ID="usernameLabel" runat="server" CssClass="auto-style26"></asp:Label>
        </div>
        <div class="box-body">
            <span class="auto-style26">Please note your 15-Digit pin for further communication :
                    </span>
                    <asp:Label ID="pinLabel" runat="server" ForeColor="Blue" CssClass="auto-style26"></asp:Label>
            
            <span class="auto-style26">
            <br />
            Fill Out Required Details</span><br class="auto-style26" />
            <br class="auto-style26" />
        </div>
            </div>
    
        <div class="box">
        <!-- /.box-body -->
                <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" OnFinishButtonClick="Wizard1_FinishButtonClick" CancelButtonText="" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" CssClass="auto-style26" Height="945px" Width="698px">
                    <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                    <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                    <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                    <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                    <WizardSteps>
                        <asp:WizardStep runat="server" Title="Step 1">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="step1" />
                            <asp:Label ID="errorLabel" runat="server" ForeColor="Red"></asp:Label>
                            <table>
                                <tr>
                                    <td class="auto-style31">Name :&nbsp;&nbsp; </td>
                                    <td class="auto-style15">
                                        <asp:TextBox ID="nameTxt" class="form-control" runat="server" OnTextChanged="nameTxt_TextChanged"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTxt" ErrorMessage="Required Field" ForeColor="Red" ValidationGroup="step1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style32"></td>
                                    <td class="auto-style15"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style25">Category : </td>
                                    <td class="auto-style16">
                                        <asp:DropDownList class="form-control dropdown-toggle" ID="categoryDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="category_id">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="categoryDropDownList" ErrorMessage="Required Field" ForeColor="Red" ValidationGroup="step1">*</asp:RequiredFieldValidator>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style15">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">Birthdate :&nbsp;&nbsp; </td>
                                    <td class="auto-style15">
                                        <asp:Calendar ID="DOBCalendar" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" Width="350px" NextPrevFormat="FullMonth">
                                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                            <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                            <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                                            <TodayDayStyle BackColor="#CCCCCC" />
                                        </asp:Calendar>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style32"></td>
                                    <td class="auto-style15"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">Contact No :&nbsp;&nbsp; </td>
                                    <td class="auto-style15">
                                        <asp:TextBox class="form-control" ID="contactnoTxt" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contactnoTxt" ErrorMessage="Required Field" ForeColor="Red" ValidationGroup="step1">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="contactnoTxt" ErrorMessage="Contact Number Not Valid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" ValidationGroup="step1" Visible="False"> *</asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style32"></td>
                                    <td class="auto-style15"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">Email Id :&nbsp;&nbsp; </td>
                                    <td class="auto-style15">
                                        <asp:TextBox class="form-control" ID="emailidTxt" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailidTxt" ErrorMessage="Required Field" ForeColor="Red" ValidationGroup="step1">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="emailidTxt" ErrorMessage="Email ID Not Valid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="step1">*</asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style31">&nbsp;</td>
                                    <td class="auto-style15">&nbsp;</td>
                                </tr>
                            </table>
                            <br/>
                            <br/>
                        </asp:WizardStep>
                        <asp:WizardStep runat="server" Title="Step 2">
                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="step2" CssClass="auto-style26" />
                            <asp:Label ID="errorLabel2" runat="server" ForeColor="Red" CssClass="auto-style26"></asp:Label>
                            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/StudentAccess/years.xml"></asp:XmlDataSource>
                            <div class="auto-style4">
                                <span class="auto-style26"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Academic Details</strong></span><strong><br/>
                                <br/>
                                </strong>
                            </div>
                            <table>
                                <tr>
                                    <td class="auto-style40">SSC Passing Year :&nbsp;&nbsp; </td>
                                    <td class="auto-style34">
                                        <asp:DropDownList class="form-control dropdown-toggle" ID="SSCDropDownList" runat="server" DataSourceID="XmlDataSource1" DataTextField="text" DataValueField="value" CssClass="auto-style26">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SSCDropDownList" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style41"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">&nbsp;SSC School : </td>
                                    <td class="auto-style34">
                                        <asp:TextBox class="form-control" ID="sscschoolTxt" runat="server" CssClass="auto-style26"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="sscschoolTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40"><span class="auto-style17">SSC Board :</span> </td>
                                    <td class="auto-style35">
                                        <asp:DropDownList class="form-control dropdown-toggle" ID="SSCBoardDropDownList" runat="server" DataSourceID="XmlDataSource2" DataTextField="text" DataValueField="value" CssClass="auto-style26">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="SSCBoardDropDownList" ErrorMessage="Required Field" ForeColor="Red" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/StudentAccess/boards.xml"></asp:XmlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">SSC Roll No : </td>
                                    <td class="auto-style34">
                                        <asp:TextBox class="form-control" ID="sscrollnoTxt" runat="server" CssClass="auto-style26"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="sscrollnoTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">SSC Percentage : </td>
                                    <td class="auto-style34">
                                        <asp:TextBox class="form-control" ID="sscpercentageTxt" runat="server" CssClass="auto-style26"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="sscpercentageTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="sscpercentageTxt" ErrorMessage="Enter Valid Percentage" MaximumValue="100" MinimumValue="0" SetFocusOnError="True" ValidationGroup="step2" Visible="False" ForeColor="Red" CssClass="auto-style26">*</asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">HSC Passing Year : </td>
                                    <td class="auto-style34">
                                        <asp:DropDownList class="form-control dropdown-toggle" ID="HSCDropDownList" runat="server" DataSourceID="XmlDataSource1" DataTextField="text" DataValueField="value" CssClass="auto-style26">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="HSCDropDownList" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">HSC School : </td>
                                    <td class="auto-style34">
                                        <asp:TextBox class="form-control" ID="hscschoolTxt" runat="server" CssClass="auto-style26"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="hscschoolTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style41"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">HSC Board : </td>
                                    <td class="auto-style35">
                                        <asp:DropDownList class="form-control dropdown-toggle" ID="HSCBoardDropDownList" runat="server" DataSourceID="XmlDataSource2" DataTextField="text" DataValueField="value" CssClass="auto-style26">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="HSCBoardDropDownList" ErrorMessage="Required Field" ForeColor="Red" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">HSC Roll no : </td>
                                    <td class="auto-style34">
                                        <asp:TextBox class="form-control" ID="hscrollnoTxt" runat="server" CssClass="auto-style26"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="hscrollnoTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">HSC Percentile : </td>
                                    <td class="auto-style34">
                                        <asp:TextBox class="form-control" ID="hscpercentileTxt" runat="server" CssClass="auto-style26"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="hscpercentileTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="hscpercentileTxt" ErrorMessage="Enter Valid Percentage" MaximumValue="100" MinimumValue="0" SetFocusOnError="True" ValidationGroup="step2" Visible="False" CssClass="auto-style26"></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">Competitive Exam Passing Year :&nbsp;&nbsp; </td>
                                    <td class="auto-style34">
                                        <asp:DropDownList class="form-control dropdown-toggle" ID="comExamYearDropDownList" runat="server" DataSourceID="XmlDataSource1" DataTextField="text" DataValueField="value" CssClass="auto-style26">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="comExamYearDropDownList" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">Competitive Exam Name :&nbsp;&nbsp; </td>
                                    <td class="auto-style36">
                                        <div class="auto-style14">
                                            <asp:DropDownList class="form-control dropdown-toggle" ID="comExamNameDropDownList" runat="server" DataSourceID="SqlDataSource2" DataTextField="exam_name" DataValueField="exam_id" CssClass="auto-style26">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="comExamNameDropDownList" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                        </div>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Competitive_Exam] WHERE ([program_id] = @program_id)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="program_id" SessionField="program" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">Competitive Exam Roll no :&nbsp; </td>
                                    <td class="auto-style34">
                                        <asp:TextBox class="form-control" ID="comexamrollnoTxt" runat="server" CssClass="auto-style26"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="comexamrollnoTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style40">Competitive Exam Percentile :&nbsp;&nbsp; </td>
                                    <td class="auto-style34">
                                        <asp:TextBox class="form-control" ID="comexampercentileTxt" runat="server" CssClass="auto-style26"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="comexampercentileTxt" ErrorMessage="Required Field" ForeColor="Red" SetFocusOnError="True" CssClass="auto-style26">*</asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="comexampercentileTxt" ErrorMessage="Enter Valid Percentage" MaximumValue="100" MinimumValue="0" SetFocusOnError="True" ValidationGroup="step2" Visible="False" CssClass="auto-style26"></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42"></td>
                                    <td class="auto-style35"></td>
                                </tr>
                            </table>
                        </asp:WizardStep>
                    </WizardSteps>
                </asp:Wizard>
        <br class="auto-style26" />

        <br class="auto-style9" />
        

    
        </form>

</asp:Content>
