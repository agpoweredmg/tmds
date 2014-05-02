﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SpecialServicesInformation.aspx.cs" Inherits="ServicesInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .style1
        {
            width: 187px;
        }
    </style>
 </head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    <center>
    <asp:Image ID="Image2" runat="server" ImageUrl="untitled.png" />
        <br />
        <table>
        <tr>
            <th>
            </th>
            <th class="style1">
            Services Information
            </th>
            <th>   
            </th>
        </tr>

        <tr>
        <td>
            Service ID:
        </td>
        <td class="style1">
            <asp:TextBox ID="ServiceID_tb" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="Submit_btn" runat="server" Text="Submit" 
                onclick="Submit_btn_Click" />
            <asp:Button ID="Clear_btn" runat="server" Text="Clear" 
                onclick="Clear_btn_Click" />
        </td>
        </tr>

        <tr>
        <td>
        Service Name:
        </td>
        <td class="style1">
            <asp:TextBox ID="ServiceName_tb" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="ServiceName_RegEx" runat="server" 
                ControlToValidate="ServiceName_tb" 
                ErrorMessage="Service Name must be between 1-40 characters." ForeColor="Maroon" 
                ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
        </td>
        <td>
            <asp:DropDownList ID="ChooseSpecialServices_ddl" runat="server">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                <asp:ListItem Value="1">Add Special Service</asp:ListItem>
                <asp:ListItem Value="2">Delete Special Service</asp:ListItem>
                <asp:ListItem Value="3">Update Special Service</asp:ListItem>
            </asp:DropDownList>
         </td>
         </tr>

        <tr>
        <td>
            Service Price:
        </td>
        <td class="style1">
            <asp:TextBox ID="ServicePrice_tb" runat="server"></asp:TextBox>
        </td>
        <td>
        </td>
        </tr>
        
    </table>       
    <asp:Button ID="home_btn" runat="server" Text="Home" Width="68px" Height="38px" 
            onclick="home_btn_Click" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Text="Logout" Width="68px" 
            Height="38px" onclick="logout_btn_Click" CausesValidation="False" />
        <asp:ValidationSummary ID="ServicesInformation_vs" runat="server" 
            ForeColor="Maroon" HeaderText="You recieved the following Errors:" />
        <br />
      </center>
     </div>
    </form>
</body>
</html>
