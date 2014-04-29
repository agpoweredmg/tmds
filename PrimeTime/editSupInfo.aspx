<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editSupInfo.aspx.cs" Inherits="editSupInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <h2 style="font-family: sans-serif; width: 1013px; text-align: center;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" Style="text-align: center" />
            </h2>
            <table>
                <tr>
                    <th>
                    </th>
                    <th>
                        Edit Supplier Information
                    </th>
                    <th>
                    </th>
                </tr>
                <tr>
                    <th>
                        SupplierID:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierID_tb" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:Button ID="submit_btn" runat="server" Text="Submit" 
                            onclick="submit_btn_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                            onclick="clear_btn_Click" />
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Name:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierName_tb" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        <asp:DropDownList ID="actionToPerform_ddl" runat="server" 
                            onselectedindexchanged="actionToPerform_ddl_SelectedIndexChanged">
                            <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                            <asp:ListItem Value="1">Add New Supplier</asp:ListItem>
                            <asp:ListItem Value="2">Update Supplier </asp:ListItem>
                            <asp:ListItem Value="3">Search Supplier ID</asp:ListItem>
                            <asp:ListItem Value="4">Delete Supplier</asp:ListItem>
                        </asp:DropDownList>
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Phone:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierPhone_tb" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Fax:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierFax_tb" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Email:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierEmail_tb" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Street:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierStreet_tb" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier City:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierCity_tb" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier State:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierState_tb" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Zip:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierZip_tb" runat="server"></asp:TextBox>
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
            </table>
        </center>
    </div>
    <br />
    <br />
    <asp:Button ID="back_btn" runat="server" Height="38px" Text="&lt;&lt;Back" 
        Width="68px" onclick="back_btn_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="home_btn" runat="server" Height="38px" Text="Home" Width="68px" 
        onclick="home_btn_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Height="38px" Text="Logout" 
        Width="68px" onclick="logout_btn_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
