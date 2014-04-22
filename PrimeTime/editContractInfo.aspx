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
                <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" />
                <table>
                    <tr>
                        <th>
                        </th>
                        <th>
                            Edit Contracts Information
                        </th>
                        <th>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Contract ID:
                        </th>
                        <th>
                            <asp:TextBox ID="contractID_tb" runat="server"></asp:TextBox>
                        </th>
                        <th>
                            <asp:Button ID="submit_btn" runat="server" Text="Submit" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                                onclick="clear_btn_Click" />
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Account ID:
                        </th>
                        <th>
                            <asp:TextBox ID="accountID_tb" runat="server"></asp:TextBox>
                        </th>
                        <th>
                            <asp:DropDownList ID="actionToPerform_ddl" runat="server">
                                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                                <asp:ListItem Value="1">Add New Contract</asp:ListItem>
                                <asp:ListItem Value="2">Update Contract</asp:ListItem>
                                <asp:ListItem Value="3">Search Contract ID</asp:ListItem>
                                <asp:ListItem Value="4">Delete Contract</asp:ListItem>
                            </asp:DropDownList>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Contract Date:
                        </th>
                        <th>
                            <asp:TextBox ID="contractDate_tb" runat="server"></asp:TextBox>
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Deposit Amount:
                        </th>
                        <th>
                            <asp:TextBox ID="depositAmount_tb" runat="server"></asp:TextBox>
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Discount:
                        </th>
                        <th>
                            <asp:TextBox ID="discount_tb" runat="server"></asp:TextBox>
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
                </table>
            </center>
            <br />
            <br />
            <asp:Button ID="back_btn" runat="server" Text="&lt;&lt;Back" Height="38px" Width="68px" />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px" Width="68px" />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px" Width="68px" />
        </div>
    </div>
    </form>
</body>
</html>
