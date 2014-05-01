<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccountsReceivableReports.aspx.cs" Inherits="AccountsPayableReports" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Acct_ID" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Acct_ID" HeaderText="Account ID" ReadOnly="True" 
                    SortExpression="Acct_ID" />
                <asp:BoundField DataField="Invoice_ID" HeaderText="Invoice ID" 
                    SortExpression="Invoice_ID" />
                <asp:BoundField DataField="Acct_Bal" HeaderText="Account Balance" 
                    SortExpression="Acct_Bal" />
                <asp:BoundField DataField="Amt_Due" HeaderText="Amount Due" 
                    SortExpression="Amt_Due" />
                <asp:BoundField DataField="Date_Due" HeaderText="Date Due" 
                    SortExpression="Date_Due" />
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
	Acct_Receivable.Acct_ID,
	Invoice_ID,
	Acct_Bal,
	Amt_Due,
	Date_Due
FROM Acct_Receivable, Acct_Rec_Detail
WHERE Acct_Receivable.Acct_ID = Acct_Rec_Detail.Acct_ID
ORDER BY Acct_Receivable.Acct_ID"></asp:SqlDataSource>
    </form>
</body>
</html>
