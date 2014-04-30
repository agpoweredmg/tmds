<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SalesRepresentativeInformation.aspx.cs" Inherits="SalesRepresentativeInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

   
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
    <asp:Image ID="Image2" runat="server" ImageUrl="untitled.png" />
      
        <table>
        <tr>
            <th></th>
            <th class="style4">
        <asp:Label ID="Label1" runat="server" Text="Sales Representative Information"></asp:Label>
            </th>
            <th></th>
        </tr>
        <tr>
        <td>
            Sales Rep
            ID:</td>
        <td>
            <asp:TextBox ID="salesRepID_tb" runat="server"></asp:TextBox>
            </td>
        <td>
    <asp:Button ID="submit_btn" runat="server" Text="Submit" Width="61px" 
                onclick="submit_btn_Click"  />
    &nbsp;&nbsp;&nbsp;<asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" onclick="clear_btn_Click" 
                />
            &nbsp;</td>
        </tr>

        <tr>
        <td>
            First
            Name:</td>
        <td>
            <asp:TextBox ID="firstName_tb" runat="server"></asp:TextBox>
            </td>
        <td>
            <asp:DropDownList ID="chooseAction_ddl" runat="server" Height="16px" 
                Width="140px" onselectedindexchanged="chooseAction_ddl_SelectedIndexChanged">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                <asp:ListItem Value="1">Add Sales Representative</asp:ListItem>
                <asp:ListItem Value="2">Delete Sales Representative</asp:ListItem>
                <asp:ListItem Value="3">Update Sales Representative</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>

        <tr>
        <td>
            Last Name:</td>
        <td>
            <asp:TextBox ID="lastName_tb" runat="server"></asp:TextBox>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
            Phone: </td>
        <td >
            <asp:TextBox ID="phone_tb" runat="server"></asp:TextBox>
            </td>
        <td>
           </td>
        </tr>

        <tr>
        <td>
            Alt Phone:</td>
        <td>
            <asp:TextBox ID="altPhone_tb" runat="server"></asp:TextBox>
            </td>
        <td>
          </td>
        </tr>

        <tr>
        <td>
            Email:</td>
        <td>
            <asp:TextBox ID="email_tb" runat="server"></asp:TextBox>
            </td>
        <td>
          </td>
        </tr>

        </table>
    
    <asp:Button ID="home_btn" runat="server" Text="Home" Width="68px" Height="38px" 
            onclick="home_btn_Click" />&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Text="Logout" Width="68px" 
            Height="38px" onclick="logout_btn_Click" />
     </center>
     </div>
    
   </form>
</body>
</html>
