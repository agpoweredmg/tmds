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
                            <asp:Button ID="submit_btn" runat="server" Text="Submit" 
                                onclick="submit_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
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
                            <asp:DropDownList ID="actionToPerform_ddl" runat="server" 
                                onselectedindexchanged="actionToPerform_ddl_SelectedIndexChanged">
                                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                            <asp:ListItem Value="1">Add Contract</asp:ListItem>
                            <asp:ListItem Value="2">Delete Contract</asp:ListItem>
                            <asp:ListItem Value="3">Update Contract</asp:ListItem>
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
