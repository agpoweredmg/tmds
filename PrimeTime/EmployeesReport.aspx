<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeesReport.aspx.cs" Inherits="EmployeesReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Emp_ID" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            Caption="Employee Report">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Emp_ID" HeaderText="Employee ID" ReadOnly="True" 
                    SortExpression="Emp_ID" />
                <asp:BoundField DataField="Emp_SSN" HeaderText="Employee SSN" 
                    SortExpression="Emp_SSN" />
                <asp:BoundField DataField="Emp_F_Name" HeaderText="First Name" 
                    SortExpression="Emp_F_Name" />
                <asp:BoundField DataField="Emp_L_Name" HeaderText="Last Name" 
                    SortExpression="Emp_L_Name" />
                <asp:BoundField DataField="Emp_Phone" HeaderText="Phone" 
                    SortExpression="Emp_Phone" />
                <asp:BoundField DataField="Emp_Alt_Phone" HeaderText="Alt Phone" 
                    SortExpression="Emp_Alt_Phone" />
                <asp:BoundField DataField="Emp_Hire_Date" HeaderText="Hire Date" 
                    SortExpression="Emp_Hire_Date" />
                <asp:BoundField DataField="Emp_End_Date" HeaderText="End Date" 
                    SortExpression="Emp_End_Date" />
                <asp:CheckBoxField DataField="Emp_Manager_Y_N" HeaderText="Manager Y or N" 
                    SortExpression="Emp_Manager_Y_N" />
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
        SelectCommand="SELECT [Emp_ID], [Emp_SSN], [Emp_F_Name], [Emp_L_Name], [Emp_Phone], [Emp_Alt_Phone], [Emp_Hire_Date], [Emp_End_Date], [Emp_Manager_Y_N] FROM [Employees]">
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" BorderColor="Black" 
        BorderStyle="Double" onclick="Button1_Click" Text="Back" />
    </form>
</body>
</html>
