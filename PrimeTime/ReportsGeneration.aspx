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
            </div>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Reports Generation"></asp:Label>
            </p>
            <table>
                <tr>
                    <td>
                        <asp:CheckBox ID="accountReport_chk" runat="server" Text="Accounts:" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:DropDownList ID="accountsDetails_ddl" runat="server" DataSourceID="accounts" DataTextField="Acct_ID"
                            DataValueField="Acct_ID" Width="150px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="accounts" runat="server" ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>"
                            SelectCommand="SELECT [Acct_ID] FROM [Acct_Rec_Detail]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            <asp:CheckBox ID="SuppliersReport_chk" runat="server" Text="Suppliers:" />
                            &nbsp;&nbsp;&nbsp;&nbsp; </b>
                    </td>
                    <td>
                        <asp:DropDownList ID="supplier_ddl" runat="server" DataSourceID="SqlDataSource_supplier"
                            DataTextField="Supplier_Name" DataValueField="Supplier_Name" Width="150px">
                            <asp:ListItem Selected="True" Value="select* From Suppliers">All Suppliers</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_supplier" runat="server" ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>"
                            SelectCommand="SELECT [Supplier_Name] FROM [Suppliers]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            <asp:CheckBox ID="eventsReport_chk" runat="server" Text="Events:" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                    </td>
                    <td>
                        <asp:DropDownList ID="eventsDetailReport_ddl" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="Event_Name" DataValueField="Event_Name" Width="150px">
                            <asp:ListItem Selected="True" Value="select* From Suppliers">All Suppliers</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>"
                            SelectCommand="SELECT [Event_Name] FROM [Events]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            <asp:CheckBox ID="contractsReport_chk" runat="server" Text="Contracts:" />
                            &nbsp;&nbsp;&nbsp; </b>
                    </td>
                    <td>
                        <asp:DropDownList ID="contractsReport_ddl" runat="server" DataSourceID="Contracts" DataTextField="Contract_ID"
                            DataValueField="Contract_ID" Width="150px">
                            <asp:ListItem Selected="True" Value="select* From Suppliers">All Suppliers</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Contracts" runat="server" ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>"
                            SelectCommand="SELECT [Contract_ID] FROM [Contract_Details]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            <asp:CheckBox ID="customersReport_chk" runat="server" Text="Customers:" />
                            &nbsp; </b>
                    </td>
                    <td>
                        <asp:DropDownList ID="customersReport_ddl" runat="server" DataSourceID="customers" DataTextField="Cust_L_Name"
                            DataValueField="Cust_L_Name" Width="150px">
                            <asp:ListItem Selected="True" Value="select* From Suppliers">All Suppliers</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="customers" runat="server" ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>"
                            SelectCommand="SELECT [Cust_L_Name], [Cust_F_Name] FROM [Customers]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            <asp:CheckBox ID="servicesReport_chk0" runat="server" Text="Services:" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                    </td>
                    <td>
                        <asp:DropDownList ID="serivcesReport_ddl" runat="server" DataSourceID="services" DataTextField="Service_Name"
                            DataValueField="Service_Name" Width="150px">
                            <asp:ListItem Selected="True" Value="select* From Suppliers">All Suppliers</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="services" runat="server" ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>"
                            SelectCommand="SELECT [Service_Name] FROM [Special_Services]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            <asp:CheckBox ID="inventoryReport_chk0" runat="server" Text="Inventory:" />
                            &nbsp;&nbsp;&nbsp; </b>
                    </td>
                    <td>
                        <asp:DropDownList ID="inventoryReport_ddl" runat="server" DataSourceID="SqlDataSource2"
                            DataTextField="Inventory_ID" DataValueField="Inventory_ID" Width="150px">
                            <asp:ListItem Selected="True" Value="select* From Suppliers">All Suppliers</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>"
                            SelectCommand="SELECT [Inventory_ID] FROM [Inventory]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            <asp:CheckBox ID="employeesReport_chk0" runat="server" Text="Employees:" />
                            &nbsp; </b>
                    </td>
                    <td>
                        <asp:DropDownList ID="employeesReport_ddl" runat="server" DataSourceID="employees" DataTextField="Emp_L_Name"
                            DataValueField="Emp_L_Name" Width="150px">
                            <asp:ListItem Selected="True" Value="select* From Suppliers">All Suppliers</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="employees" runat="server" ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>"
                            SelectCommand="SELECT [Emp_F_Name], [Emp_L_Name] FROM [Employees]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            <asp:CheckBox ID="payrollReport_chk" runat="server" Text="Payroll:" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                    </td>
                    <td>
                        <b>
                            <asp:DropDownList ID="payrollReport_ddl" runat="server" DataSourceID="employees" DataTextField="Emp_L_Name"
                                DataValueField="Emp_L_Name" Width="150px">
                                <asp:ListItem Selected="True" Value="select* From Suppliers">All Suppliers</asp:ListItem>
                            </asp:DropDownList>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            <asp:CheckBox ID="purchasesReport_chk" runat="server" Text="Purchases:" />
                            &nbsp;&nbsp; </b>
                    </td>
                    <td>
                        <b>
                            <asp:DropDownList ID="purchasesReport_ddl" runat="server" DataSourceID="PO_Orders" DataTextField="Purchase_Order_ID"
                                DataValueField="Purchase_Order_ID" Width="150px">
                                <asp:ListItem Selected="True" Value="select* From Suppliers">All Suppliers</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="PO_Orders" runat="server" ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>"
                                SelectCommand="SELECT [Purchase_Order_ID] FROM [PO_Details]"></asp:SqlDataSource>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                            <asp:CheckBox ID="salesReport_chk" runat="server" Text="Sales:" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:CheckBox ID="specificPeroid_chk" runat="server" Text="Select a specific period." />
            <table>
                <tr>
                    <td>
                        Start Date:
                    </td>
                    <td>
                        <b>
                            <asp:TextBox ID="reportStartDate_txt" runat="server" Width="200" Style="text-align: left"></asp:TextBox>
                        </b>
                    </td>
                </tr>
                <tr>
                    <td>
                        End Date:
                    </td>
                    <td>
                        <b>
                            <asp:TextBox ID="reportEndDate_txt" runat="server" Width="200" Style="text-align: left"></asp:TextBox>
                        </b>
                    </td>
                </tr>
            </table>
            <p>
                <b>
                    <asp:Button ID="generateReport_btn" runat="server" Height="38px" Text="Generate Report"
                        Width="151px" Style="margin-left: 0px" />
                </b>
            </p>
            <p>
                <b>
                    <asp:Button ID="submit_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                        Height="38px" Style="text-align: center" Text="Submit" Width="69px" />
                    &nbsp;&nbsp;
                    <asp:Button ID="back_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                        Height="38px" Style="text-align: center" Text="&lt;&lt;Back" Width="69px" />
                    &nbsp;&nbsp;
                    <asp:Button ID="home_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                        Height="38px" Style="text-align: center" Text="Home" Width="69px" />
                    &nbsp;&nbsp;
                    <asp:Button ID="logout_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                        Height="38px" Style="text-align: center" Text="Logout" Width="69px" />
                </b>
            </p>
            </form>
            </center>
        </body>
</html>
