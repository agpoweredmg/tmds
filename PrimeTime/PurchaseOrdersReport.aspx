<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurchaseOrdersReport.aspx.cs" Inherits="PurchaseOrdersReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="Purchase_Order_ID,Unprepared_Item_ID" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            Caption="Purchase Orders Report">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Purchase_Order_ID" HeaderText="Purchase Order ID" 
                    ReadOnly="True" SortExpression="Purchase_Order_ID" />
                <asp:BoundField DataField="Rep_ID" HeaderText="Rep ID" 
                    SortExpression="Rep_ID" />
                <asp:BoundField DataField="Supplier_ID" HeaderText="Supplier ID" 
                    SortExpression="Supplier_ID" />
                <asp:BoundField DataField="Unprepared_Item_ID" HeaderText="Unprepared Item ID" 
                    ReadOnly="True" SortExpression="Unprepared_Item_ID" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" />
                <asp:BoundField DataField="Order_Date" HeaderText="Order Date" 
                    SortExpression="Order_Date" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" SelectCommand="SELECT
	PO_Details.Purchase_Order_ID,
	Rep_ID,
	Supplier_ID,
	Unprepared_Item_ID,
	Quantity,
	Order_Date
FROM Purchase_Orders, PO_Details
WHERE Purchase_Orders.Purchase_Order_ID = PO_Details.Purchase_Order_ID
ORDER BY PO_Details.Purchase_Order_ID"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" BorderColor="Black" 
        BorderStyle="Double" onclick="Button1_Click" Text="Back" />
    </form>
</body>
</html>
