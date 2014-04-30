﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MealInformation.aspx.cs" Inherits="MealInformation" %>

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
            Entree:
            </td>
        <td>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                SelectCommand="SELECT [Item_Name] FROM [ENTREE_ITEMS]"></asp:SqlDataSource>
    <asp:DropDownList ID="entree_ddl" runat="server" 
        DataSourceID="SqlDataSource3" DataTextField="Item_Name" 
        DataValueField="Item_Name" Width="85px">
    </asp:DropDownList>
            </td>
        <td>
    <asp:Button ID="submit_btn" runat="server" Text="Submit" Width="61px" 
                onclick="submit_btn_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="Clear" 
                Width="61px" onclick="clear_btn_Click" />
            </td>
        </tr>

        <tr>
        <td>
            Side Item One:
            </td>
        <td>
    <asp:DropDownList ID="sideOne_ddl" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="Item_Name" 
        DataValueField="Item_Name" Width="85px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
        SelectCommand="SELECT [Item_Name] FROM [SIDE_ITEMS]"></asp:SqlDataSource>
            </td>
        <td>
            <asp:DropDownList ID="chooseAction_ddl" runat="server" 
                onselectedindexchanged="chooseAction_ddl_SelectedIndexChanged">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                <asp:ListItem Value="1">Add Meal</asp:ListItem>
                <asp:ListItem Value="2">Delete Meal</asp:ListItem>
                <asp:ListItem Value="3">Update Meal</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>

        <tr>
        <td>
            Side Item Two:
            </td>
        <td>
    <asp:DropDownList ID="sideTwo_ddl" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="Item_Name" 
        DataValueField="Item_Name" Width="85px">
    </asp:DropDownList>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
        Number of Meals:
            </td>
        <td>
        <asp:TextBox ID="numberOfMeals_tb" runat="server" Width="80px"></asp:TextBox>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
    Total Cost:
            </td>
        <td>
            <asp:TextBox ID="totalCost_tb" runat="server"></asp:TextBox>
            </td>
        <td></td>
        </tr>
        
    </table>

    <asp:Button ID="home_btn" runat="server" Text="Home" Width="68px" Height="38px" 
            onclick="home_btn_Click" />&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Text="Logout" Width="68px" Height="38px" 
            onclick="logout_btn_Click" />
      </center>
     </div>
    </form>
</body>
</html>
