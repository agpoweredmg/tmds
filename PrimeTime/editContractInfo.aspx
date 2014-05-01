<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editContractInfo.aspx.cs"
    Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <center>
                <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" />
                <table>
                    <tr>
                        <td>
                        </td>
                        <th>
                            Edit Contracts Information
                        </th>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contract ID:
                        </td>
                        <td>
                            <asp:TextBox ID="contractID_tb" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="submit_btn" runat="server" Text="Submit" 
                                onclick="submit_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                                onclick="clear_btn_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Account ID:
                        </td>
                        <td>
                            <asp:TextBox ID="accountID_tb" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="actionToPerform_ddl" runat="server" 
                                onselectedindexchanged="actionToPerform_ddl_SelectedIndexChanged">
                                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                            <asp:ListItem Value="1">Add Contract</asp:ListItem>
                            <asp:ListItem Value="2">Delete Contract</asp:ListItem>
                            <asp:ListItem Value="3">Update Contract</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contract Date:
                        </td>
                        <td>
                            <asp:TextBox ID="contractDate_tb" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Deposit Amount:
                        </td>
                        <td>
                            <asp:TextBox ID="depositAmount_tb" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Discount:
                        </td>
                        <td>
                            <asp:TextBox ID="discount_tb" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        <td>
                    </tr>
                </table>
            </center>
            <br />
            <br />
            <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px" Width="68px" 
                onclick="home_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px" 
                Width="68px" onclick="logout_btn_Click" />
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="contractDate_tb" ErrorMessage="Invalid Contract Date " 
                ForeColor="Maroon" ValidationGroup="Text"></asp:RegularExpressionValidator>
            <br />
        </div>
    </div>
    </form>
</body>
</html>
