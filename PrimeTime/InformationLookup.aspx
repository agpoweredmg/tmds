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
    <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" Style="text-align: left" />
    <div>
        <br />
        <div style="margin-left: 200px; font-family: sans-serif; font-size: 15.75px; font-weight: bold;
            width: 209px; text-align: center;">
            Information Lookup
        </div>
        <br />
    </div>
    <br />
    <table>
        <tr>
            <td>Account Number :</td>
            <td>
    <asp:DropDownList ID="accountsDetails_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource2" DataTextField="Acct_ID" DataValueField="Acct_ID">
    </asp:DropDownList>
            </td>
            <td>
    <asp:CheckBox ID="allAccount_chk" runat="server" Text="Show All Records" />
            </td>
        </tr>
        <tr>
            <td>Supplier&nbsp;:</td>
            <td>
    <asp:DropDownList ID="suppliers_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource3" DataTextField="Supplier_Name" 
                    DataValueField="Supplier_Name">
    </asp:DropDownList>
            </td>
            <td>
    <asp:CheckBox ID="allSuppliers_chk" runat="server" Text="Show All Records" />
            </td>
        </tr>
        <tr>
            <td>Event : </td>
            <td>
    <asp:DropDownList ID="eventsDetails_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource4" DataTextField="Event_Name" 
                    DataValueField="Event_Name">
    </asp:DropDownList>
            </td>
            <td>
    <asp:CheckBox ID="eventDetails_chk" runat="server" Text="Show All Records" />
            </td>
        </tr>
        <tr>
            <td>Contract&nbsp;:</td>
            <td>
    <asp:DropDownList ID="contracts_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource5" DataTextField="Contract_ID" 
                    DataValueField="Contract_ID">
    </asp:DropDownList>
            </td>
            <td>
    <asp:CheckBox ID="allContracts_chk" runat="server" Text="Show All Records" 
                     />
            </td>
        </tr>
        <tr>
            <td>Customer&nbsp;:</td>
            <td>
    <asp:DropDownList ID="customers_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource1" DataTextField="Cust_F_Name" 
                    DataValueField="Cust_F_Name">
    </asp:DropDownList>
            </td>
            <td>
    <asp:CheckBox ID="allCustomers_chk" runat="server" Text="Show All Records" />
            </td>
        </tr>
        
        
        <tr>
            <td>Service&nbsp;:</td>
            <td>
    <asp:DropDownList ID="services_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource6" DataTextField="Service_Name" DataValueField="Service_Name" 
                    >
    </asp:DropDownList>
            </td>
            <td>
    <asp:CheckBox ID="services_chk" runat="server" Text="Show All Records" 
                    />
            </td>
        </tr>
        <tr>
            <td>Inventory :</td>
            <td>
    <asp:DropDownList ID="inventoryDetails_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource7" DataTextField="Inventory_ID" 
                    DataValueField="Inventory_ID">
    </asp:DropDownList>
            </td>
            <td>
    <asp:CheckBox ID="allInventory_chk" runat="server" Text="Show All Records" />
            </td>
        </tr>
        <tr>
            <td>Purchase&nbsp;: </td>
            <td>
    <asp:DropDownList ID="purchases_ddl" runat="server" Height="25px" Width="181px" 
                    DataSourceID="SqlDataSource8" DataTextField="Purchase_Order_ID" DataValueField="Purchase_Order_ID" 
                    >
    </asp:DropDownList>
            </td>
            <td>
    <asp:CheckBox ID="allPurchases_chk" runat="server" Text="Show All Records" 
                     />
            </td>
        </tr>

    </table>
    <table>
        <tr>
        <td>
            <asp:TextBox ID="outInformationTextBox_txt" runat="server" Height="230px" Width="434px" 
                TextMode="MultiLine"></asp:TextBox>
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
                SelectCommand="SELECT [Service_Name] FROM [Special_Services]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                SelectCommand="SELECT [Contract_ID] FROM [Contract_Details]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                SelectCommand="SELECT [Supplier_Name] FROM [Suppliers]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
        SelectCommand="SELECT [Cust_F_Name], [Cust_L_Name] FROM [Customers]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
        SelectCommand="SELECT [Event_Name] FROM [Events]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
        SelectCommand="SELECT [Inventory_ID] FROM [Inventory]"></asp:SqlDataSource>
    <br />
    <asp:Button ID="lookup_btn" runat="server" Height="38px" Text="Lookup" 
        Width="151px" style="margin-left: 0px" onclick="lookup_btn_Click"  />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="submmit_btn" runat="server" BorderColor="Black" BorderStyle="Double"
        Height="38px" Style="text-align: center" Text="Submit" Width="69px" 
        onclick="submmit_btn_Click" />
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
