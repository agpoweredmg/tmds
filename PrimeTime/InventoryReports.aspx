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
            AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            Caption="Inventory Report">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Inventory_ID" HeaderText="Inventory_ID" 
                    ReadOnly="True" SortExpression="Inventory_ID" />
                <asp:BoundField DataField="Unprepared_Item_ID" HeaderText="Unprepared_Item_ID" 
                    SortExpression="Unprepared_Item_ID" />
                <asp:BoundField DataField="QOH" HeaderText="QOH" 
                    SortExpression="QOH" />
                <asp:BoundField DataField="Min_Amt" HeaderText="Min_Amt" 
                    SortExpression="Min_Amt" />
                <asp:BoundField DataField="Max_Amt" HeaderText="Max_Amt" 
                    SortExpression="Max_Amt" />
                <asp:BoundField DataField="Process_Date" HeaderText="Process_Date" 
                    SortExpression="Process_Date" />
                <asp:BoundField DataField="Expiry_Date" HeaderText="Expiry_Date" 
                    SortExpression="Expiry_Date" />
                <asp:BoundField DataField="RowNum_IN" HeaderText="RowNum_IN" 
                    InsertVisible="False" ReadOnly="True" SortExpression="RowNum_IN" />
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
    <asp:Button ID="Button1" runat="server" BorderColor="Black" 
        BorderStyle="Double" onclick="Button1_Click" Text="Back" />
    </form>
</body>
</html>
