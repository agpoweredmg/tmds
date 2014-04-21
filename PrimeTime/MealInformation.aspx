<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MealInformation.aspx.cs" Inherits="MealInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
    <asp:Image ID="Image2" runat="server" ImageUrl="untitled.png" />
        <br />
        <center>
        <table>
        <tr>
            <th></th>
            <th>
        <asp:Label ID="Label1" runat="server" Text="Meal Information"></asp:Label>
            </th>
            <th></th>

        </tr>
        <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Entree"></asp:Label>
            </td>
        <td>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6ConnectionString3 %>" 
                SelectCommand="SELECT [Item_Name] FROM [ENTREE_ITEMS]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource3" DataTextField="Item_Name" 
        DataValueField="Item_Name" Width="85px">
    </asp:DropDownList>
            </td>
        <td>
    <asp:Button ID="Button1" runat="server" Text="Submit" Width="61px" />
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="Clear" Width="61px" />
            </td>
        </tr>

        <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Side One"></asp:Label>
            </td>
        <td>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="Item_Name" 
        DataValueField="Item_Name" Width="85px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6ConnectionString2 %>" 
        SelectCommand="SELECT [Item_Name] FROM [SIDE_ITEMS]"></asp:SqlDataSource>
            </td>
        <td>
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                <asp:ListItem Value="1">Add Meal</asp:ListItem>
                <asp:ListItem Value="2">Delete Meal</asp:ListItem>
                <asp:ListItem Value="3">Update Meal</asp:ListItem>
                <asp:ListItem Value="4">Search Meals</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>

        <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Side Two"></asp:Label>
            </td>
        <td>
    <asp:DropDownList ID="DropDownList3" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="Item_Name" 
        DataValueField="Item_Name" Width="85px">
    </asp:DropDownList>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
        <asp:Label ID="Label2" runat="server" Text="Number of Meals"></asp:Label>
            </td>
        <td>
        <asp:TextBox ID="TextBox1" runat="server" Width="80px"></asp:TextBox>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
    <asp:Label ID="Label3" runat="server" Text="Total Cost"></asp:Label>
            </td>
        <td>
    <asp:TextBox ID="TextBox2" runat="server" Width="80px"></asp:TextBox>
            </td>
        <td></td>
        </tr>
        
    </table>
    </center>
       
        <br />
       
    <asp:Button ID="Button6" runat="server" Text="&lt;&lt; Back" Width="68px" 
            Height="38px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button7" runat="server" Text="Home" Width="68px" Height="38px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button8" runat="server" Text="Logout" Width="68px" Height="38px" />
     </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6ConnectionString %>" 
        SelectCommand="SELECT [Item_Name] FROM [Unprepared_Item]">
    </asp:SqlDataSource>
    </form>
</body>
</html>
