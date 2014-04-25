<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mgmtTasks.aspx.cs" Inherits="mgmtTasks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
        .wrap
        {
            white-space: normal;
            width: 100px;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
        <center>
            <h2 style="font-family: sans-serif; width: 1013px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" />
            </h2>
            <table>
                <tr>
                    <th>
                    </th>
                    <th>
                        Management Tasks
                    </th>
                    <th>
                    </th>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="editAccount_btn" runat="server" Text="Edit Account" 
                            Width="184px" onclick="editAccount_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="editCustomer_btn" runat="server" Text="Edit Customer" Style="text-align: center"
                            Width="184px" />
                    </td>
                    <td>
                        <asp:Button ID="editInventoryDetails_btn" runat="server" Text="Edit Inventory Details"
                            Width="184px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="editSupplier_btn" runat="server" Text="Edit Supplier" 
                            Width="184px" onclick="editSupplier_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="editPurchaseOrder_btn" runat="server" Text="Edit Purchase Order"
                            Width="184px" />
                    </td>
                    <td>
                        <asp:Button ID="editEmployeeDetails_btn" runat="server" Text="Edit Employee Details"
                            Width="184px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="editEvent_btn" runat="server" Text="Edit Event" Width="184px" 
                            onclick="editEvent_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="editMealDetails_btn" runat="server" Text="Edit Meal Details" Width="184px" />
                    </td>
                    <td>
                        <asp:Button ID="editPayRollDetails_btn" runat="server" Text="Edit Pay Roll Details"
                            Width="184px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="editContract_btn" runat="server" Text="Edit Contract" 
                            Width="184px" onclick="editContract_btn_Click" />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Button ID="specialServices_btn" runat="server" 
                            Text="Special Services Information" Width="184px" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="back_btn" runat="server" Text="&lt;&lt;Back" Height="38px" Width="68px" />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px" Width="68px" 
                onclick="home_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px" Width="68px" />&nbsp;&nbsp;&nbsp;&nbsp;
        </center>
        <br />
    </div>
    </form>
</body>
</html>
