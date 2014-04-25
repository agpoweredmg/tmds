<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ServicesInformation.aspx.cs" Inherits="ServicesInformation" %>

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
            height: 81px;
        }
        .style3
        {
            width: 194px;
            height: 81px;
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
            height: 81px;
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
        <asp:Label ID="servicesInformation_lbl" runat="server" Text="Services Information"></asp:Label>
            </th>
            <th></th>

        </tr>
        <tr>
        <td class="style7">
            <asp:Label ID="id_lbl" runat="server" Text="ID:"></asp:Label>
            <br />
            <br />
            <asp:Label ID="name_lbl" runat="server" Text="Name:"></asp:Label>
            <br />
            <br />
            <asp:Label ID="price_lbl" runat="server" Text="Price:"></asp:Label>
            <br />
            </td>
        <td class="style3">
            <br />
            <asp:TextBox ID="id_tb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="name_tb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="price_tb" runat="server"></asp:TextBox>
            <br />
            <br />
            </td>
        <td style="text-align: center" class="style2">
            <br />
            <br />
            <asp:Button ID="submit_btn" runat="server" Text="Submit" onclick="submit_btn_Click" />
    &nbsp;&nbsp;&nbsp;<asp:Button ID="clear_btn" runat="server" Text="Clear" onclick="clear_btn_Click" 
                />
            <br />
            <br />
            <asp:DropDownList ID="chooseAction_ddl" runat="server" 
                onselectedindexchanged="chooseAction_ddl_SelectedIndexChanged">
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
            &nbsp;</td>
        <td class="style5">
            <br />
            </td>
        <td class="style4">
            </td>
        </tr>

        <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
        <td></td>
        </tr>

        <tr>
        <td class="style6">
    <asp:Label ID="Label3" runat="server" Text="Total Cost"></asp:Label>
            :</td>
        <td class="style1">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        <td></td>
        </tr>
        
    </table>
    </center>
       
        <br />
       
    <asp:Button ID="back_btn" runat="server" Text="&lt;&lt; Back" Width="68px" 
            Height="38px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="home_btn" runat="server" Text="Home" Width="68px" Height="38px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Text="Logout" Width="68px" Height="38px" />
     </div>
    <div>
    
    </div>
    </form>
</body>
</html>
