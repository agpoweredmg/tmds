<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReportsGeneration.aspx.cs"
    Inherits="ReportsGeneration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
        <body>
            <center>
            <form id="form1" runat="server">
            <div>
                <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" />
                <div style="font-size: x-large">
                    Reports Generation</div>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:DropDownList ID="chooseReport_ddl" runat="server" 
                onselectedindexchanged="chooseReport_ddl_SelectedIndexChanged">
                <asp:ListItem Value="0">Accounts Payable</asp:ListItem>
                <asp:ListItem Value="1">Accounts Receivable</asp:ListItem>
                <asp:ListItem Value="2">Customers</asp:ListItem>
                <asp:ListItem Value="3">Inventory</asp:ListItem>
                <asp:ListItem Value="4">Payroll</asp:ListItem>
                <asp:ListItem Value="5">Purchase Orders</asp:ListItem>
                <asp:ListItem Value="6">Employees</asp:ListItem>
            </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="eventLookup_ddl" runat="server" 
                            DataSourceID="eventLookup" DataTextField="Event_Name" DataValueField="Event_ID" 
                            onselectedindexchanged="eventLookup_ddl_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="eventLookup" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                            SelectCommand="SELECT [Event_ID], [Event_Name] FROM [Events]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <p>
                <b>
                    <asp:Button ID="generateReport_btn" runat="server" Height="38px" Text="Generate Report"
                        Width="151px" Style="margin-left: 0px" 
                    onclick="generateReport_btn_Click" BorderColor="Black" 
                    BorderStyle="Double" />
                </b>
            </p>
            <p>
                <b>
                    &nbsp;&nbsp;
                    <asp:Button ID="home_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                        Height="38px" Style="text-align: center" Text="Home" Width="69px" 
                    onclick="home_btn_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="logout_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                        Height="38px" Style="text-align: center" Text="Logout" Width="69px" 
                    onclick="logout_btn_Click" />
                </b>
            </p>
            </form>
            </center>
        </body>
</html>
