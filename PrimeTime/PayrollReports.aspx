﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PayrollReports.aspx.cs" Inherits="Payroll" %>

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
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Emp_ID" HeaderText="Emp_ID" ReadOnly="True" 
                    SortExpression="Emp_ID" />
                <asp:BoundField DataField="Emp_F_Name" HeaderText="Emp_F_Name" 
                    SortExpression="Emp_F_Name" />
                <asp:BoundField DataField="Emp_L_Name" HeaderText="Emp_L_Name" 
                    SortExpression="Emp_L_Name" />
                <asp:BoundField DataField="Wages" HeaderText="Wages" ReadOnly="True" 
                    SortExpression="Wages" />
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
        ConnectionString="<%$ ConnectionStrings:WebUserConnectionString %>" SelectCommand="SELECT
	e.Emp_ID,
	e.Emp_F_Name,
	e.Emp_L_Name,
	CAST(SUM(j.Job_Pay_Rate * ps.Hours_Worked) AS DECIMAL(5,2)) AS Wages
FROM Employees e, Event_Staff es, Jobs j, Pay_Schedule ps
WHERE e.Emp_ID = ps.emp_id
     AND ps.Job_ID = es.Job_ID
     AND es.Job_ID = j.Job_ID
     AND es.Event_ID = @evid
GROUP BY e.Emp_ID, e.Emp_F_Name, e.Emp_L_Name
ORDER BY e.Emp_L_Name">
        <SelectParameters>
            <asp:CookieParameter CookieName="evid" Name="evid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" BorderColor="Black" 
        BorderStyle="Double" onclick="Button1_Click" Text="Back" />
    </form>
</body>
</html>
