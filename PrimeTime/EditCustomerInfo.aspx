<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditCustomerInfo.aspx.cs" Inherits="EditCustomerInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 363px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" />
    <table>
    <tr>
    <td></td>
    <th class="style1">
        Customer Information Details
    </td>
    <td></td>
    </tr>

    <tr>
    <td>
    Customer ID:
    </td>
    <th class="style1">
    

        &nbsp;<asp:TextBox ID="customerID_tb" runat="server" 
            ontextchanged="customerID_tb_TextChanged" Height="22px"></asp:TextBox>

    
    </td>
       &nbsp;<asp:Label ID="CustomerID_lbl" runat="server" Text="Customer ID" 
            Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <td>
    
        <asp:Button ID="Submit_btn" runat="server" Text="Submit" 
            onclick="Submit_btn_Click" />
&nbsp;<asp:Button ID="Clear_btn" runat="server" Text="Clear" 
            onclick="Clear_btn_Click" CausesValidation="False" />
&nbsp;&nbsp;
    
    </td>
    </tr>

    <tr>
    <td>
        First Name:</td>
    <td class="style1">
    
        <asp:TextBox ID="FirstName_tb" runat="server" 
            ontextchanged="FirstName_tb_TextChanged"></asp:TextBox>
        <asp:RegularExpressionValidator ID="FirstName_RegEx" runat="server" 
            ControlToValidate="FirstName_tb" ErrorMessage="Invalid First Name" 
            ForeColor="Maroon" 
            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
        <asp:Label ID="FirstName_lbl" runat="server" style="font-weight: 700" 
            Text="First Name" Visible="False"></asp:Label>
        </td>
    <td>
    
        <asp:DropDownList ID="ChooseCustomerActions_ddl" runat="server" 
            DataTextField="Customer_ID" 
            DataValueField="Customer_ID" 
            onselectedindexchanged="ChooseCustomerActions_ddl_SelectedIndexChanged" 
            AutoPostBack="True">
            <asp:ListItem Value="0">Choose an Action</asp:ListItem>
            <asp:ListItem Value="1">Add Customer</asp:ListItem>
            <asp:ListItem Value="2">Delete Customer</asp:ListItem>
            <asp:ListItem Value="3">Update Customer</asp:ListItem>
        </asp:DropDownList>
        </td>
    </tr>

    <tr>
    <td>
        Last Name:</td>
    <td class="style1">
    
        <asp:TextBox ID="LastName_tb" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="LastName_RegEx" runat="server" 
            ControlToValidate="LastName_tb" ErrorMessage="Invalid Last Name" 
            ForeColor="Maroon" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
        </td>
    <td>
    
        <asp:DropDownList ID="ChooseCustomerID_ddl" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="Cust_F_Name" 
            DataValueField="Customer_ID" 
            onselectedindexchanged="ChooseCustomerID_ddl_SelectedIndexChanged" 
            Visible="False">
        </asp:DropDownList>
        </td>
    </tr>

    <tr>
    <td>
        Phone Number:</td>
    <td class="style1">
    
        <asp:TextBox ID="PhoneNumber_tb" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="PhoneNumber_RegEx" runat="server" 
            ControlToValidate="PhoneNumber_tb" 
            ErrorMessage="Invalid format.  Phone number must be (***)***-**** format." 
            ForeColor="Maroon" 
            
            ValidationExpression="[(][0-9]{3}[)][0-9]{3}-[0-9]{4}">*</asp:RegularExpressionValidator>
        </td>
    <td>
    
        &nbsp;</td>
    </tr>

    <tr>
    <td>
        Alternate Number:</td>
    <td class="style1">
    
        <asp:TextBox ID="AlternateNumber_tb" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="AlternateNumber_RegEx" runat="server" 
            ControlToValidate="AlternateNumber_tb" 
            ErrorMessage="Invalid format.  Alternate number must be (***)***-**** format." 
            ForeColor="Maroon" 
            
            ValidationExpression="[(][0-9]{3}[)][0-9]{3}-[0-9]{4}">*</asp:RegularExpressionValidator>
        </td>
    <td>
    
        &nbsp;</td>
    </tr>

    <tr>
    <td>
        Email:</td>
    <td class="style1">
    
        <asp:TextBox ID="Email_tb" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="Email_RegEx" runat="server" 
            ControlToValidate="Email_tb" ErrorMessage="Invalid Email Address" 
            ForeColor="Maroon" 
            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    <td>
    
        &nbsp;</td>
    </tr>

    </table>
    <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px"
        Width="68px" OnClick="home_btn_Click" CausesValidation="False" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="logout_btn" runat="server" Text="Logout" Height="38px"
        Width="68px" OnClick="logout_btn_Click" CausesValidation="False" />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
            SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        <asp:ValidationSummary ID="EditCustomerInfo_vs" runat="server" 
            ForeColor="Maroon" HeaderText="You received the following Errors:" />
        <br />
        <br />
        <br />
        <br />
        <br />
        </center>
    </div>
    </form>
</body>
</html>
