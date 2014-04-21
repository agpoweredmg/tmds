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
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        <td>
    &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" Width="61px" />
    &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="Clear" Width="61px" />
            &nbsp;&nbsp;</td>
        </tr>

        <tr>
        <td>
            Name:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        <td>
            &nbsp;<asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="133px">
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
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        <td>&nbsp;</td>
        </tr>

        <tr>
        <td>
            Cost: </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        <td>
            &nbsp;</td>
        </tr>

        <tr>
        <td>
            Expiration Date:</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        <td>
            &nbsp;</td>
        </tr>

        <tr>
        <td>
            Quantity On Hand:</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        <td>&nbsp;</td>
        </tr>

        <tr>
        <td>
            Minimum:</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
            Maximum:</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
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
       
    <asp:Button ID="Button6" runat="server" Text="&lt;&lt; Back" Width="68px" 
            Height="38px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button7" runat="server" Text="Home" Width="68px" Height="38px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button8" runat="server" Text="Logout" Width="68px" Height="38px" />
     </div>
    
    </div>
    </form>
</body>
</html>
