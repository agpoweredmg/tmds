﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ServicesInformation.aspx.cs" Inherits="ServicesInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .wrap{white-space:normal; width:100px;}
        .style1
        {
            width: 194px;
        }
        .style2
        {
            height: 121px;
        }
        .style3
        {
            width: 194px;
            height: 121px;
        }
        .style4
        {
            height: 33px;
        }
        .style5
        {
            width: 194px;
            height: 33px;
        }
        .style6
        {
            width: 72px;
        }
        .style7
        {
            height: 121px;
            width: 72px;
        }
        .style8
        {
            height: 33px;
            width: 72px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
    <asp:Image ID="Image2" runat="server" ImageUrl="untitled.png" />
        <br />
        <center>
        <table>
        <tr>
            <th class="style6">&nbsp;</th>
            <th class="style1">
        <asp:Label ID="Label1" runat="server" Text="Services Information"></asp:Label>
            </th>
            <th></th>

        </tr>
        <tr>
        <td class="style7">
            </td>
        <td class="style3">
            <asp:Label ID="Label4" runat="server" 
                Text="Services:(select all that apply)"></asp:Label>
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" 
                Height="81px" Width="143px">
                <asp:ListItem Value="0">DJ</asp:ListItem>
                <asp:ListItem Value="1">Wet Bar</asp:ListItem>
                <asp:ListItem Value="2">Room Setup</asp:ListItem>
                <asp:ListItem Value="3">Room Take Down</asp:ListItem>
                <asp:ListItem Value="5">Cake</asp:ListItem>
                <asp:ListItem Value="6">Services</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            </td>
        <td style="text-align: center" class="style2">
            <br />
            <br />
            <asp:Button ID="Button9" runat="server" Text="Submit" />
    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button10" runat="server" Text="Clear" 
                />
            <br />
            <br />
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                <asp:ListItem Value="1">Add Service</asp:ListItem>
                <asp:ListItem Value="2">Delete Service</asp:ListItem>
                <asp:ListItem Value="3">Update Service</asp:ListItem>
                <asp:ListItem Value="4">Search Services</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>

        <tr>
        <td class="style8" style="text-align: justify">
    <asp:Label ID="Label3" runat="server" Text="Total Cost"></asp:Label>
            </td>
        <td class="style5">
    <asp:TextBox ID="TextBox2" runat="server" Width="140px"></asp:TextBox>
            <br />
            </td>
        <td class="style4">
            </td>
        </tr>

        <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style1">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6ConnectionString2 %>" 
        SelectCommand="SELECT [Item_Name] FROM [SIDE_ITEMS]"></asp:SqlDataSource>
            </td>
        <td></td>
        </tr>

        <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style1">
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6ConnectionString3 %>" 
                SelectCommand="SELECT [Item_Name] FROM [ENTREE_ITEMS]"></asp:SqlDataSource>
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
    <div>
    
    </div>
    </form>
</body>
</html>
