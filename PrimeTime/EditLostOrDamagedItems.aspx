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
        <asp:CompareValidator ID="LostDamageID_cv" runat="server" 
            ErrorMessage="Lost Damage ID must be valid." 
            ControlToValidate="LostDamageID_tb" ForeColor="Maroon" Operator="DataTypeCheck" 
            Type="Integer">*</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="LostDamageID_rf" runat="server" 
            ErrorMessage="Lost Damage ID is required." 
            ControlToValidate="LostDamageID_tb" ForeColor="Maroon">*</asp:RequiredFieldValidator>
    </th>
    <th>
        <asp:Button ID="Submit_btn" runat="server" Text="Submit" 
            onclick="Submit_btn_Click" Width="61px" />

&nbsp;
        <asp:Button ID="Clear_btn" runat="server" Text="Clear" 
            onclick="Clear_btn_Click" CausesValidation="False" />
&nbsp;</th>
    </tr>

    <tr>
    <th>
    Inventory ID:
    </th>
    <th>
        <asp:TextBox ID="InventoryID_tb" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="InventoryID_cv" runat="server" 
            ErrorMessage="CompareValidator" ControlToValidate="LostDamageID_tb" 
            ForeColor="Maroon" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="InventoryID_rf" runat="server" 
            ErrorMessage="Inventory ID is required. " ControlToValidate="InventoryID_tb" 
            ForeColor="Maroon">*</asp:RequiredFieldValidator>
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
        <asp:CompareValidator ID="QuantityLost2_cv" runat="server" 
            ControlToValidate="QuantityLost_tb" 
            ErrorMessage="Quantity Lost must be numeric." ForeColor="Maroon" 
            Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
        <asp:CompareValidator ID="QuantityLost_cv" runat="server" 
            ControlToValidate="QuantityLost_tb" 
            ErrorMessage="Quantity must be greater than or equal to zero." 
            ForeColor="Maroon" Operator="GreaterThanEqual" ValueToCompare="0">*</asp:CompareValidator>
    </th>
    <th>
    </th>
    </tr>
    </table>
   
    <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px"
        Width="68px" OnClick="home_btn_Click" CausesValidation="False" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px"
        Width="68px" OnClick="logout_btn_Click" CausesValidation="False" />
        <br />
        <asp:ValidationSummary ID="EditLostOrDamagedItems_vs" runat="server" 
            ForeColor="Maroon" HeaderText="You recieved the following Errors:" />
    </center>
    </div>
    </form>
</body>
</html>
