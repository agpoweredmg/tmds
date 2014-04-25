<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuppliersInformation.aspx.cs" Inherits="SuppliersInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 151px;
        }
        .style2
        {
            width: 71px;
        }
        .style3
        {
            width: 159px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div style="text-align: center">
    <center>
    <asp:Image ID="Image2" runat="server" ImageUrl="untitled.png" />
        <br />
        
        <table>
        <tr>
            <th class="style2"></th>
            <th class="style3">
        <asp:Label ID="Label1" runat="server" Text="Supplier Information"></asp:Label>
            </th>
            <th class="style1"></th>
        </tr>
        <tr>
        <td class="style2">
            ID:<br />
            </td>
        <td class="style3">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        <td class="style1">
    &nbsp;
    <asp:Button ID="Submit" runat="server" Text="Submit" Width="61px" 
                onclick="Button1_Click" />
            &nbsp;<asp:Button ID="ClearButton" runat="server" Text="Clear" Width="61px" 
                onclick="Button3_Click" />
            </td>
        </tr>

        <tr>
        <td class="style2">
            Name:</td>
        <td class="style3">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        <td class="style1">
            &nbsp;
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                <asp:ListItem Value="1">Add Supplier</asp:ListItem>
                <asp:ListItem Value="2">Delete Supplier</asp:ListItem>
                <asp:ListItem Value="3">Update Supplier</asp:ListItem>
                <asp:ListItem Value="4">Search Suppliers</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>

        <tr>
        <td class="style2">
            Phone:</td>
        <td class="style3">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        <td class="style1">&nbsp;</td>
        </tr>

        <tr>
        <td class="style2">
            Email: </td>
        <td class="style3">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        <td class="style1">
            &nbsp;</td>
        </tr>

        <tr>
        <td class="style2">
            Fax:</td>
        <td class="style3">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        <td class="style1">
            &nbsp;</td>
        </tr>

        <tr>
        <td class="style2">
            Street:</td>
        <td class="style3">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        <td class="style1">&nbsp;</td>
        </tr>

        <tr>
        <td class="style2">
            City:</td>
        <td class="style3">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        <td class="style1"></td>
        </tr>

        <tr>
        <td class="style2">
            State:</td>
        <td class="style3">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        <td class="style1"></td>
        </tr>

        <tr>
        <td class="style2">
            Zip:</td>
        <td class="style3">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        <td class="style1"></td>
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
