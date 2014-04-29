<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InventoryInformation.aspx.cs" Inherits="InventoryInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div style="text-align: center">
    
    <asp:Image ID="Image2" runat="server" ImageUrl="untitled.png" />
        <br />
        <center>
        <table>
        <tr>
            <th></th>
            <th>
        <asp:Label ID="Label1" runat="server" Text="Inventory Information"></asp:Label>
            </th>
            <th></th>
        </tr>
        <tr>
        <td>
            ID:</td>
        <td>
            <asp:TextBox ID="id_tb" runat="server"></asp:TextBox>
            </td>
        <td>
    &nbsp;<asp:Button ID="submit_btn" runat="server" Text="Submit" Width="61px" 
                onclick="submit_btn_Click" />
    &nbsp;&nbsp;<asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                onclick="clear_btn_Click" />
            &nbsp;&nbsp;</td>
        </tr>

        <tr>
        <td>
            Name:</td>
        <td>
            <asp:TextBox ID="name_tb" runat="server"></asp:TextBox>
            </td>
        <td>
            &nbsp;<asp:DropDownList ID="chooseAction_ddl" runat="server" 
                Height="16px" Width="133px" 
                onselectedindexchanged="chooseAction_SelectedIndexChanged">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                <asp:ListItem Value="1">Add Inventory</asp:ListItem>
                <asp:ListItem Value="2">Delete Inventory</asp:ListItem>
                <asp:ListItem Value="3">Update Inventory</asp:ListItem>
                <asp:ListItem Value="4">Search Inventory</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>

        <tr>
        <td>
            Category:</td>
        <td>
            <asp:TextBox ID="category_tb" runat="server"></asp:TextBox>
            </td>
        <td>&nbsp;</td>
        </tr>

        <tr>
        <td>
            Cost: </td>
        <td>
            <asp:TextBox ID="cost_tb" runat="server"></asp:TextBox>
            </td>
        <td>
            &nbsp;</td>
        </tr>

        <tr>
        <td>
            Expiration Date:</td>
        <td>
            <asp:TextBox ID="expirationDate_tb" runat="server"></asp:TextBox>
            </td>
        <td>
            &nbsp;</td>
        </tr>

        <tr>
        <td>
            Quantity On Hand:</td>
        <td>
            <asp:TextBox ID="quantityOnHand_tb" runat="server"></asp:TextBox>
            </td>
        <td>&nbsp;</td>
        </tr>

        <tr>
        <td>
            Minimum:</td>
        <td>
            <asp:TextBox ID="minimum_tb" runat="server"></asp:TextBox>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
            Maximum:</td>
        <td>
            <asp:TextBox ID="maximum_tb" runat="server"></asp:TextBox>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td></td>
        </tr>
        
    </table>
    </center>
       
        <br />
       
    <asp:Button ID="back_btn" runat="server" Text="&lt;&lt; Back" Width="68px" 
            Height="38px" onclick="back_btn_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="home_btn" runat="server" Text="Home" Width="68px" Height="38px" 
            onclick="home_btn_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Text="Logout" Width="68px" Height="38px" 
            onclick="logout_btn_Click" />
     </div>
    
    </div>
    </form>
</body>
</html>
