<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InformationLookup.aspx.cs"
    Inherits="InformationLookup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
<center>
    <form id="form1" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" Style="text-align: left" />
    <div>
        <br />
    </div>
    <br />
    <table>
        <th colspan="2">
           Information Lookup
        </th>
        <tr>
            <td>Account Information :</td>
            <td>
    <asp:DropDownList ID="accountsDetails_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource2" DataTextField="Acct_ID" 
                    DataValueField="Acct_ID" AutoPostBack="True" 
                    onselectedindexchanged="accountsDetails_ddl_SelectedIndexChanged">
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Supplier Information&nbsp;:</td>
            <td>
    <asp:DropDownList ID="suppliers_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource3" DataTextField="Supplier_Name" 
                    DataValueField="Supplier_ID" AutoPostBack="True" 
                    onselectedindexchanged="suppliers_ddl_SelectedIndexChanged">
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Events : </td>
            <td>
    <asp:DropDownList ID="eventsDetails_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource4" DataTextField="Event_Name" 
                    DataValueField="Event_ID" AutoPostBack="True" 
                    onselectedindexchanged="eventsDetails_ddl_SelectedIndexChanged">
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Contracts&nbsp;:</td>
            <td>
    <asp:DropDownList ID="contracts_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource5" DataTextField="Contract_ID" 
                    DataValueField="Contract_ID" AutoPostBack="True" 
                    onselectedindexchanged="contracts_ddl_SelectedIndexChanged">
    </asp:DropDownList>
            </td>
        <tr>
            <td>Customer Information&nbsp;:</td>
            <td>
    <asp:DropDownList ID="customers_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource1" DataTextField="Customer Name" 
                    DataValueField="Customer_ID" AutoPostBack="True" 
                    onselectedindexchanged="customers_ddl_SelectedIndexChanged">
    </asp:DropDownList>
            </td>
        </tr>
        
        
        <tr>
            <td>Special Services&nbsp;:</td>
            <td>
    <asp:DropDownList ID="services_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource6" DataTextField="Service_Name" 
                    DataValueField="Service_ID" AutoPostBack="True" onselectedindexchanged="services_ddl_SelectedIndexChanged" 
                    >
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Inventory :</td>
            <td>
    <asp:DropDownList ID="inventoryDetails_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource7" DataTextField="Inventory_ID" 
                    DataValueField="Inventory_ID" AutoPostBack="True" 
                    onselectedindexchanged="inventoryDetails_ddl_SelectedIndexChanged">
    </asp:DropDownList>
            </td>
            <td>
        <tr>
            <td>Purchase Orders&nbsp;: </td>
            <td>
    <asp:DropDownList ID="purchases_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource8" DataTextField="Purchase_Order_ID" 
                    DataValueField="Purchase_Order_ID" AutoPostBack="True" onselectedindexchanged="purchases_ddl_SelectedIndexChanged" 
                    >
    </asp:DropDownList>
            </td>
        </tr>

    </table>
    <table>
        <tr>
        <td>
            <asp:TextBox ID="outInformationTextBox_txt" runat="server" Height="145px" Width="434px" 
                TextMode="MultiLine" AutoPostBack="True"></asp:TextBox>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                SelectCommand="SELECT [Acct_ID] FROM [Acct_Rec_Detail]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                SelectCommand="SELECT [Purchase_Order_ID] FROM [PO_Details]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                
                SelectCommand="SELECT [Service_Name], [Service_ID] FROM [Special_Services]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                SelectCommand="SELECT [Contract_ID] FROM [Contract_Details]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                SelectCommand="SELECT [Supplier_Name], [Supplier_ID] FROM [Suppliers]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
        
        
        SelectCommand="SELECT ([Cust_F_Name] + ' ' + [Cust_L_Name]) AS [Customer Name], Customer_ID FROM [Customers]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
        SelectCommand="SELECT [Event_Name], [Event_ID] FROM [Events]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
        SelectCommand="SELECT [Inventory_ID] FROM [Inventory]"></asp:SqlDataSource>
    <br />
    <br />
    &nbsp;&nbsp;
    <asp:Button ID="home_btn" runat="server" BorderColor="Black" BorderStyle="Double"
        Height="38px" Style="text-align: center" Text="Home" Width="69px" 
        onclick="home_btn_Click" />
    &nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" BorderColor="Black" BorderStyle="Double"
        Height="38px" Style="text-align: center" Text="Logout" Width="69px" 
        onclick="logout_btn_Click" />
    </form>
    </center>
</body>

</html>
