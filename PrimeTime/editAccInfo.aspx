<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editAccInfo.aspx.cs" Inherits="editAccInfo" %>

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
                    </td>
                    <td>
                        <asp:Button ID="submit_btn" runat="server" Text="Submit" 
                            onclick="submit_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" OnClick="clear_btn_Click" />
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
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </center>
        <asp:RangeValidator ID="dateDue_RV" runat="server" Type ="Date"
            ControlToValidate="dateDue_tb" ErrorMessage="Date must be greater than or equal to current date"></asp:RangeValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px" Width="68px" 
            onclick="home_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px" 
            Width="68px" onclick="logout_btn_Click" />
        <br />
    </div>
    </form>
</body>
</html>
