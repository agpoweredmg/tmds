<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditPurchaseOrderInfo.aspx.cs" Inherits="EditPurchaseOrderInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" />
    <table>
        
    <tr>
    <th>
    </th>
    <th>
    Edit Purchase Order Information
    </th>
    <th>
    </th>
    </tr>
    
    <tr>
    <th>
    Purchase Order ID:
    </th>
    <th>
        <asp:TextBox ID="PurchaseOrderID_tb" runat="server"></asp:TextBox>
    </th>
    <th>
        <asp:Button ID="Submit_btn" runat="server" Text="Submit" />
&nbsp;
        <asp:Button ID="Clear_btn" runat="server" Text="Clear" />
&nbsp;
    </th>
    </tr>
   
    <tr>
    <th>
    Representative ID:
    </th>
    <th>
        <asp:TextBox ID="RepresentativeID_tb" runat="server"></asp:TextBox>
    </th>
    <th>
        <asp:DropDownList ID="ChooseActionPurchaseOrder_ddl" runat="server" 
            Height="16px">
            <asp:ListItem Value="0">Choose an action</asp:ListItem>
            <asp:ListItem Value="1">Add New Purchase Order</asp:ListItem>
            <asp:ListItem Value="2">Update Purchase Order</asp:ListItem>
            <asp:ListItem Value="3">Search Purchase Orders</asp:ListItem>
            <asp:ListItem Value="4">Delete Purchase Order</asp:ListItem>
        </asp:DropDownList>
    </th>
    </tr>
    
    <tr>
    <th>
    Supplier ID:
    </th>
    <th>
        <asp:TextBox ID="SupplierID_tb" runat="server"></asp:TextBox>
    </th>
    <th>
    </th>
    </tr>
    
     <tr>
    <th>
    Order Date:
    </th>
    <th>
        <asp:TextBox ID="OrderDate_tb" runat="server"></asp:TextBox>
    </th>
    <th>
    </th>
    </tr>

    
    </table>
    </center>
    <asp:Button ID="back_btn" runat="server" Text="&lt;&lt;Back"
    </div>
    </form>
</body>
</html>
