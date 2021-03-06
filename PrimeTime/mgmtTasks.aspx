﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mgmtTasks.aspx.cs" Inherits="mgmtTasks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
                <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" />
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
                        <asp:Button ID="editAccount_btn" runat="server" Text="Account Details" 
                            Width="184px" onclick="editAccount_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="editCustomer_btn" runat="server" Text="Customer Details" Style="text-align: center"
                            Width="184px" onclick="editCustomer_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="editInventoryDetails_btn" runat="server" Text="Inventory Details"
                            Width="184px" onclick="editInventoryDetails_btn_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="editSupplier_btn" runat="server" Text="Supplier Details" 
                            Width="184px" onclick="editSupplier_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="editLostorDamagedItems_btn" runat="server" Text="Lost or Damaged Details"
                            Width="184px" onclick="editLostorDamagedItems_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="editEmployeeDetails_btn" runat="server" Text="Employee Details"
                            Width="184px" onclick="editEmployeeDetails_btn_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="editEvent_btn" runat="server" Text="Event Details" Width="184px" 
                            onclick="editEvent_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="editMealDetails_btn" runat="server" Text="Meal Details" 
                            Width="184px" onclick="editMealDetails_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="specialServices_btn" runat="server" Text="Special Services" 
                            Width="184px" onclick="specialServices_btn_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="editContract_btn" runat="server" Text="Contract Details" 
                            Width="184px" onclick="editContract_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="employeeMain_btn" runat="server" Text="Employee Main" 
                            Width="184px" onclick="employee_btn_Click" />
                    </td>
                    <td>
                        <asp:Button ID="generateReports_btn" runat="server" Text="Generate Reports" 
                            Width="184px" onclick="generateReports_btn_Click" />
&nbsp;&nbsp;</td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px" 
                Width="68px" onclick="logout_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
        </center>
        <br />
    </div>
    </form>
</body>
</html>
