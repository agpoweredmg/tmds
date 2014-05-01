<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InventoryReports.aspx.cs" Inherits="InventoryReports" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Inventory_ID" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Inventory_ID" HeaderText="Inventory ID" 
                    ReadOnly="True" SortExpression="Inventory_ID" />
                <asp:BoundField DataField="Unprepared_Item_ID" HeaderText="Unprepared Item ID" 
                    SortExpression="Unprepared_Item_ID" />
                <asp:BoundField DataField="QOH" HeaderText=" Quantity on Hand" 
                    SortExpression="QOH" />
                <asp:BoundField DataField="Min_Amt" HeaderText=" Minimum Amount" 
                    SortExpression="Min_Amt" />
                <asp:BoundField DataField="Max_Amt" HeaderText=" Maximum Amount" 
                    SortExpression="Max_Amt" />
                <asp:BoundField DataField="Process_Date" HeaderText="Process Date" 
                    SortExpression="Process_Date" />
                <asp:BoundField DataField="Expiry_Date" HeaderText="Expiry Date" 
                    SortExpression="Expiry_Date" />
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
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
        SelectCommand="SELECT * FROM [Inventory]"></asp:SqlDataSource>
    </form>
</body>
</html>
