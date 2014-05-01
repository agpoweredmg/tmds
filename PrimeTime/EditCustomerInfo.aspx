<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditCustomerInfo.aspx.cs" Inherits="EditCustomerInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            height: 21px;
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
    <th>
        Edit Customer Information
    </td>
    <td></td>
    </tr>

    <tr>
    <td>
    Customer ID:
    </td>
    <th>
    

        <asp:TextBox ID="customerID_tb" runat="server" 
            ontextchanged="customerID_tb_TextChanged"></asp:TextBox>

    
    </td>
    <td>
    
        <asp:Button ID="Submit_btn" runat="server" Text="Submit" 
            onclick="Submit_btn_Click" />
&nbsp;<asp:Button ID="Clear_btn" runat="server" Text="Clear" 
            onclick="Clear_btn_Click" />
&nbsp;&nbsp;
    
    </td>
    </tr>

    <tr>
    <td>
        First Name:</td>
    <td>
    
        <asp:TextBox ID="FirstName_tb" runat="server" 
            ontextchanged="FirstName_tb_TextChanged"></asp:TextBox>
        </td>
    <td>
    
        <asp:DropDownList ID="ChooseCustomerActions_ddl" runat="server" 
            DataTextField="Customer_ID" 
            DataValueField="Customer_ID">
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
    <td>
    
        <asp:TextBox ID="LastName_tb" runat="server"></asp:TextBox>
        </td>
    <td>
    
        &nbsp;</td>
    </tr>

    <tr>
    <td>
        Phone Number:</td>
    <td>
    
        <asp:TextBox ID="PhoneNumber_tb" runat="server"></asp:TextBox>
        </td>
    <td>
    
        &nbsp;</td>
    </tr>

    <tr>
    <td>
        Alternate Number:</td>
    <td>
    
        <asp:TextBox ID="AlternateNumber_tb" runat="server"></asp:TextBox>
        </td>
    <td>
    
        &nbsp;</td>
    </tr>

    <tr>
    <td>
        Email:</td>
    <td>
    
        <asp:TextBox ID="Email_tb" runat="server"></asp:TextBox>
        </td>
    <td>
    
        &nbsp;</td>
    </tr>

    </table>
    <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px"
        Width="68px" OnClick="home_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px"
        Width="68px" OnClick="logout_btn_Click" />
        </center>
    </div>
    </form>
</body>
</html>
