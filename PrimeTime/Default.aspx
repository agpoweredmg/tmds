<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Customer_ID" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" 
                    ReadOnly="True" SortExpression="Customer_ID" />
                <asp:BoundField DataField="Cust_F_Name" HeaderText="Cust_F_Name" 
                    SortExpression="Cust_F_Name" />
                <asp:BoundField DataField="Cust_L_Name" HeaderText="Cust_L_Name" 
                    SortExpression="Cust_L_Name" />
                <asp:BoundField DataField="Cust_Phone" HeaderText="Cust_Phone" 
                    SortExpression="Cust_Phone" />
                <asp:BoundField DataField="Cust_Alt_Phone" HeaderText="Cust_Alt_Phone" 
                    SortExpression="Cust_Alt_Phone" />
                <asp:BoundField DataField="Cust_Email" HeaderText="Cust_Email" 
                    SortExpression="Cust_Email" />
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
        SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
    </form>
</body>
</html>
