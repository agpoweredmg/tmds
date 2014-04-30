<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditLostOrDamagedItems.aspx.cs" Inherits="EditLostOrDamagedItems" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
    <asp:Image ID="Image2" runat="server" ImageUrl="untitled.png" />
    <table>
    <tr>
    <th>
    </th>
    <th>
    Edit Lost or Damaged Items
    </th>
    <th>
    </th>
    </tr>

    <tr>
    <th>
    Lost Damage ID:
    </th>
    <th>
        <asp:TextBox ID="LostDamageID_tb" runat="server"></asp:TextBox>
    </th>
    <th>
        <asp:Button ID="Submit_btn" runat="server" Text="Submit" 
            onclick="Submit_btn_Click" Width="61px" />

&nbsp;
        <asp:Button ID="Clear_btn" runat="server" Text="Clear" 
            onclick="Clear_btn_Click" />
&nbsp;</th>
    </tr>

    <tr>
    <th>
    Inventory ID:
    </th>
    <th>
        <asp:TextBox ID="InventoryID_tb" runat="server"></asp:TextBox>
    </th>
    <th>
        <asp:DropDownList ID="ChooseDamagedItemsActions_ddl" runat="server">
            <asp:ListItem Value="0">Choose an Action</asp:ListItem>
            <asp:ListItem Value="1">Add Items</asp:ListItem>
            <asp:ListItem Value="2">Delete Items</asp:ListItem>
            <asp:ListItem Value="3">Update Items</asp:ListItem>
        </asp:DropDownList>
    </th>
    </tr>

    <tr>
    <th>
    Quantity Lost:
    </th>
    <th>
        <asp:TextBox ID="QuantityLost_tb" runat="server"></asp:TextBox>
    </th>
    <th>
    </th>
    </tr>
    </table>
   
    <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px"
        Width="68px" OnClick="home_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px"
        Width="68px" OnClick="logout_btn_Click" />
    </center>
    </div>
    </form>
</body>
</html>
