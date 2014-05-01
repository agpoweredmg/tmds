﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editAccInfo.aspx.cs" Inherits="editAccInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <center>
            <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" />
            <table>
                <tr>
                    <td>
                    </td>
                    <th>
                        Edit Accounts Information
                    </th>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        Account ID:
                    </td>
                    <td>
                        <asp:TextBox ID="accountID_tb" runat="server" 
                            ontextchanged="accountID_tb_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="accountID_tb" ErrorMessage="The Account ID is required">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="submit_btn" runat="server" Text="Submit" 
                            onclick="submit_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                            OnClick="clear_btn_Click" CausesValidation="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Account Balance:
                    </td>
                    <td>
                        <asp:TextBox ID="accountBalance_tb" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="actionToPerform_ddl" runat="server" 
                            onselectedindexchanged="actionToPerform_ddl_SelectedIndexChanged">
                            <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                            <asp:ListItem Value="1">Add Account</asp:ListItem>
                            <asp:ListItem Value="2">Delete Account</asp:ListItem>
                            <asp:ListItem Value="3">Update Account</asp:ListItem>
                            </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Amount Due:
                    </td>
                    <td>
                        <asp:TextBox ID="amountDue_tb" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="amountDue_tb" 
            ErrorMessage="Amount due must be greater than 0" MaximumValue="100000" 
            MinimumValue="0">*</asp:RangeValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        Date Due:
                    </td>
                    <td>
                        <asp:TextBox ID="dateDue_tb" runat="server" 
                            ontextchanged="dateDue_tb_TextChanged"></asp:TextBox>
        <asp:RangeValidator ID="dateDue_RV" runat="server" Type ="Date"
            ControlToValidate="dateDue_tb" 
            ErrorMessage="Date must be greater than or equal to current date" 
            Display="Dynamic" MaximumValue="4/1/2025" MinimumValue="4/1/2014">*</asp:RangeValidator>
        <asp:RegularExpressionValidator ID="dateDue_RegEx" runat="server" 
            ControlToValidate="dateDue_tb" ErrorMessage="The Date Due must be in MM/DD/YYYY format" ValidationExpression="[0-9]{2}/[0-9]{2}/[0-9]{4}">*</asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </center>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px" Width="68px" 
            onclick="home_btn_Click" CausesValidation="False" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px" 
            Width="68px" onclick="logout_btn_Click" CausesValidation="False" />
        <br />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            DisplayMode="List" HeaderText="You received the following errors:" 
            Text="*" ForeColor="Maroon"/>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
