﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuppliersInformation.aspx.cs" Inherits="SuppliersInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        .style4
        {
            width: 71px;
            height: 26px;
        }
        .style5
        {
            width: 159px;
            height: 26px;
        }
        .style6
        {
            width: 151px;
            height: 26px;
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
            <asp:TextBox ID="id_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style1">
    &nbsp;
    <asp:Button ID="submit_btn" runat="server" Text="Submit" Width="61px" 
                onclick="submit_btn_Click" />
            &nbsp;<asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                onclick="clear_btn_Click" />
            </td>
        </tr>

        <tr>
        <td class="style2">
            Name:</td>
        <td class="style3">
            <asp:TextBox ID="name_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style1">
            &nbsp;
            <asp:DropDownList ID="chooseAction_ddl" runat="server" AutoPostBack="True" 
                onselectedindexchanged="chooseAction_ddl_SelectedIndexChanged">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                <asp:ListItem Value="1">Add Supplier</asp:ListItem>
                <asp:ListItem Value="2">Delete Supplier</asp:ListItem>
                <asp:ListItem Value="3">Update Supplier</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>

        <tr>
        <td class="style2">
            Phone:</td>
        <td class="style3">
            <asp:TextBox ID="phone_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style1">&nbsp;</td>
        </tr>

        <tr>
        <td class="style4">
            Email: </td>
        <td class="style5">
            <asp:TextBox ID="email_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style6">
            <asp:DropDownList ID="supplierLookup_ddl" runat="server" AutoPostBack="True" 
                DataSourceID="supplierLookup" DataTextField="Supplier_Name" 
                DataValueField="Supplier_ID" 
                onselectedindexchanged="supplierLookup_ddl_SelectedIndexChanged" 
                Visible="False">
            </asp:DropDownList>
            <asp:SqlDataSource ID="supplierLookup" runat="server" 
                ConnectionString="<%$ ConnectionStrings:WebUserLookup %>" 
                SelectCommand="SELECT [Supplier_ID], [Supplier_Name] FROM [Suppliers]">
            </asp:SqlDataSource>
            </td>
        </tr>

        <tr>
        <td class="style2">
            Fax:</td>
        <td class="style3">
            <asp:TextBox ID="fax_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style1">
            &nbsp;</td>
        </tr>

        <tr>
        <td class="style2">
            Street:</td>
        <td class="style3">
            <asp:TextBox ID="street_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style1">&nbsp;</td>
        </tr>
        <tr>
        <td>
            Suite or Box No:
        </td>
        <td>
            <asp:TextBox ID="suite_tb" runat="server"></asp:TextBox>
        </td>
        <td>
        </td>
        </tr>
        <tr>
        <td class="style2">
            City:</td>
        <td class="style3">
            <asp:TextBox ID="city_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style1"></td>
        </tr>

        <tr>
        <td class="style2">
            State:</td>
        <td class="style3">
            <asp:TextBox ID="state_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style1"></td>
        </tr>

        <tr>
        <td class="style2">
            Zip:</td>
        <td class="style3">
            <asp:TextBox ID="zip_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style1"></td>
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
