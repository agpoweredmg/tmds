﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditCustomerInfo.aspx.cs" Inherits="EditCustomerInfo" %>

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
        <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" />
    <table>
    <tr>
    <th class="style2"></th>
    <th class="style2">
        Edit Customer Information
    </th>
    <th class="style2"></th>
    </tr>

    <tr>
    <th>
    Customer ID:
    </th>
    <th>
    
<<<<<<< HEAD
        <asp:TextBox ID="customerID_tb" runat="server" 
            ontextchanged="customerID_tb_TextChanged"></asp:TextBox>
=======
        <asp:TextBox ID="customerID_tb" runat="server" ></asp:TextBox>
>>>>>>> 9805c386dc4f9aea1ef976bbe1ca1016af52cc7b
    
    </th>
    <th>
    
        <asp:Button ID="Submit_btn" runat="server" Text="Submit" 
            onclick="Submit_btn_Click" />
&nbsp;<asp:Button ID="Clear_btn" runat="server" Text="Clear" 
            onclick="Clear_btn_Click" />
&nbsp;&nbsp;
    
    </th>
    </tr>

    <tr>
    <th>
        First Name:</th>
    <th>
    
        <asp:TextBox ID="FirstName_tb" runat="server" 
            ontextchanged="FirstName_tb_TextChanged"></asp:TextBox>
        </th>
    <th>
    
        <asp:DropDownList ID="ChooseCustomerActions_ddl" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Customer_ID" 
            DataValueField="Customer_ID">
            <asp:ListItem Value="0">Choose an Action</asp:ListItem>
            <asp:ListItem Value="1">Add Customer</asp:ListItem>
            <asp:ListItem Value="2">Delete Customer</asp:ListItem>
            <asp:ListItem Value="3">Update Customer</asp:ListItem>
        </asp:DropDownList>
        </th>
    </tr>

    <tr>
    <th>
        Last Name:</th>
    <th>
    
        <asp:TextBox ID="LastName_tb" runat="server"></asp:TextBox>
        </th>
    <th>
    
        &nbsp;</th>
    </tr>

    <tr>
    <th>
        Phone Number:</th>
    <th>
    
        <asp:TextBox ID="PhoneNumber_tb" runat="server"></asp:TextBox>
        </th>
    <th>
    
        &nbsp;</th>
    </tr>

    <tr>
    <th>
        Alternate Number:</th>
    <th>
    
        <asp:TextBox ID="AlternateNumber_tb" runat="server"></asp:TextBox>
        </th>
    <th>
    
        &nbsp;</th>
    </tr>

    <tr>
    <th>
        Email:</th>
    <th>
    
        <asp:TextBox ID="Email_tb" runat="server"></asp:TextBox>
        </th>
    <th>
    
        &nbsp;</th>
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
