<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeInformation.aspx.cs" Inherits="EmployeeInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 16px;
            width: 304px;
        }
        .style2
        {
            height: 23px;
            width: 304px;
        }
        .style4
        {
            height: 23px;
            width: 142px;
        }
        .style5
        {
            height: 16px;
            width: 142px;
        }
        .style6
        {
            width: 117px;
        }
        .style7
        {
            height: 23px;
            width: 117px;
        }
        .style8
        {
            height: 16px;
            width: 117px;
        }
        .style9
        {
            width: 443px;
        }
        .style10
        {
            width: 142px;
        }
        .style11
        {
            width: 304px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div style="text-align: center">
    
    <asp:Image ID="Image2" runat="server" ImageUrl="untitled.png" />
        <br />
        <center>
        <table class="style9">
        <tr>
            <th class="style6"></th>
            <th class="style11">
        <asp:Label ID="Label1" runat="server" Text="Employee Information Details"></asp:Label>
            </th>
            <th class="style10">
                <br />
            </th>
        </tr>
        <tr>
        <td class="style6">
            ID:</td>
        <td class="style11">
            <asp:TextBox ID="id_tb" runat="server" ontextchanged="id_tb_TextChanged" 
                CausesValidation="True"></asp:TextBox>
            <asp:Label ID="ID_lbl" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        <td class="style10">
    &nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>

        <tr>
        <td class="style6">
            First
            Name:</td>
        <td class="style11">
            <asp:TextBox ID="FirstName_tb" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="FirstName_RegEx" runat="server" 
                ControlToValidate="FirstName_tb" ErrorMessage="First Name is not valid." 
                ForeColor="Maroon" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
            </td>
        <td class="style10">
            <asp:Button ID="submit_btn" runat="server" Text="Submit" Width="61px" 
                onclick="submit_btn_Click" />
            &nbsp;<asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                style="height: 26px" onclick="clear_btn_Click" />
            </td>
        </tr>

        <tr>
        <td class="style6">
            Last Name:</td>
        <td class="style11">
            <asp:TextBox ID="lastName_tb" runat="server"></asp:TextBox>
            <asp:Label ID="LastName_lbl" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:RegularExpressionValidator ID="LastName_RegEx" runat="server" 
                ControlToValidate="lastName_tb" ErrorMessage="Last Name is not valid." 
                ForeColor="Maroon" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
            </td>
        <td class="style10">
            <asp:DropDownList ID="chooseAction_ddl" runat="server" 
                onselectedindexchanged="chooseAction_ddl_SelectedIndexChanged" 
                AutoPostBack="True">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
            <asp:ListItem Value="1">Add Employee</asp:ListItem>
            <asp:ListItem Value="2">Delete Employee</asp:ListItem>
            <asp:ListItem Value="3">Update Employee</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>


        <tr>
        <td class="style6">
            SSN:</td>
        <td class="style11">
            <asp:TextBox ID="ssn_tb" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="SSN_RegEx" runat="server" 
                ControlToValidate="ssn_tb" ErrorMessage="SSN must be in ***-**-**** format." 
                ForeColor="Maroon" ValidationExpression="\d{3}-\d{2}-\d{4}">*</asp:RegularExpressionValidator>
            </td>
        <td class="style10">
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="chooseemployee_ddl" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="Emp_L_Name" 
                DataValueField="Emp_ID" 
                onselectedindexchanged="chooseemployee_ddl_SelectedIndexChanged" 
                Visible="False">
            </asp:DropDownList>
            </td>
        </tr>

        <tr>
        <td class="style6">
            Hire Date:</td>
        <td class="style11">
            <asp:TextBox ID="hireDate_tb" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="hireDate_tb" 
                ErrorMessage="The contract date must in MM/DD/YYYY format." ForeColor="Maroon" 
                ValidationExpression="[0-9]{2}/[0-9]{2}/[0-9]{4}">*</asp:RegularExpressionValidator>
            <asp:RangeValidator ID="HireDate_rv" runat="server" 
                ControlToValidate="hireDate_tb" 
                ErrorMessage="Date must be between today's date and 4/1/2025. " MaximumValue="4/1/2025" 
                MinimumValue="5/2/2014" Type="Date" ForeColor="Maroon">*</asp:RangeValidator>
            </td>
        <td class="style10">
            &nbsp;</td>
        </tr>

        <tr>
        <td class="style6">
            End Date:</td>
        <td class="style11">
            <asp:TextBox ID="endDate_tb" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="endDate_tb" 
                ErrorMessage="The contract date must in MM/DD/YYYY format." ForeColor="Maroon" 
                ValidationExpression="[0-9]{2}/[0-9]{2}/[0-9]{4}">*</asp:RegularExpressionValidator>
            <asp:RangeValidator ID="EndDate_rv" runat="server" 
                ControlToValidate="endDate_tb" 
                ErrorMessage="Date must be between today's date and 4/1/2025. " MaximumValue="4/1/2025" 
                MinimumValue="5/2/2014" Type="Date" ForeColor="Maroon">*</asp:RangeValidator>
            </td>
        <td class="style10">&nbsp;</td>
        </tr>

        <tr>
        <td class="style6">
            Phone:</td>
        <td class="style11">
            <asp:TextBox ID="phone_tb" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="Phone_RegEx" runat="server" 
            ControlToValidate="phone_tb" 
            ErrorMessage="Invalid format.  Phone number must be (***)***-**** format." 
            ForeColor="Maroon" 
            
            ValidationExpression="[(][0-9]{3}[)][0-9]{3}-[0-9]{4}">*</asp:RegularExpressionValidator>
            </td>
        <td class="style10"></td>
        </tr>

        <tr>
        <td class="style6">
            Alt Phone:</td>
        <td class="style11">
            <asp:TextBox ID="altPhone_tb" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="AltPhone_RegEx" runat="server" 
            ControlToValidate="altPhone_tb" 
            ErrorMessage="Invalid format.  Alternate phone number must be (***)***-**** format." 
            ForeColor="Maroon" 
            
            ValidationExpression="[(][0-9]{3}[)][0-9]{3}-[0-9]{4}">*</asp:RegularExpressionValidator>
            </td>
        <td class="style10"></td>
        </tr>

        <tr>
        <td class="style7">
            Password:</td>
        <td class="style2">
            <asp:TextBox ID="password_tb" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="password_tb" 
                ErrorMessage="Password must be between 6 and 15 characters long." 
                ForeColor="Maroon" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{6,15}$">*</asp:RegularExpressionValidator>
            </td>
        <td class="style4"></td>
        </tr>

        <tr>
        <td class="style8">
            <asp:Label ID="manager_lbl" runat="server" Text="Manager"></asp:Label>
            </td>
        <td class="style1">
            <asp:CheckBox ID="manager_chkbx" runat="server" 
                oncheckedchanged="manager_chkbx_CheckedChanged" />
            </td>
        <td class="style5"></td>
        </tr>

        <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style11">
            &nbsp;</td>
        <td class="style10"></td>
        </tr>
        
    </table>
    <asp:Button ID="home_btn" runat="server" Text="Home" Width="68px" Height="38px" 
            onclick="home_btn_Click" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Text="Logout" Width="68px" Height="38px" 
            onclick="logout_btn_Click" CausesValidation="False" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                SelectCommand="SELECT * FROM [Employees]"></asp:SqlDataSource>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="Maroon" HeaderText="You received the following Errors:" />
     </center>
     </div>
    
    </div>
    </form>
</body>
</html>
