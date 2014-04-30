<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuppliersInformation.aspx.cs" Inherits="SuppliersInformation" %>

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
            <th>
       Supplier Information
            </th>
            <th></th>
        </tr>

        <tr>
        <td>
            ID:
            </td>
        <td>
            <asp:TextBox ID="id_tb" runat="server"></asp:TextBox>
            </td>
        <td>

    <asp:Button ID="submit_btn" runat="server" Text="Submit" Width="61px" 
                onclick="submit_btn_Click" />
            &nbsp;<asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                onclick="clear_btn_Click" />
            </td>
        </tr>

        <tr>
        <td >
            Name:</td>
        <td>
            <asp:TextBox ID="name_tb" runat="server"></asp:TextBox>
            </td>
        <td>
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
        <td>
            Phone:</td>
        <td>
            <asp:TextBox ID="phone_tb" runat="server"></asp:TextBox>
            </td>
        <td>
        </td>
        </tr>

        <tr>
        <td>
            Email: </td>
        <td>
            <asp:TextBox ID="email_tb" runat="server"></asp:TextBox>
            </td>
        <td>
            
<td class="style6">
            <asp:DropDownList ID="supplierLookup_ddl" runat="server" AutoPostBack="True" 
                DataSourceID="supplierLookup" DataTextField="Supplier_Name" 
                DataValueField="Supplier_ID" 
                onselectedindexchanged="supplierLookup_ddl_SelectedIndexChanged" 
                Visible="False">
            </asp:DropDownList>
            <asp:SqlDataSource ID="supplierLookup" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                SelectCommand="SELECT [Supplier_ID], [Supplier_Name] FROM [Suppliers]" 
                onselecting="supplierLookup_Selecting">
            </asp:SqlDataSource>

            </td>
        </tr>

        <tr>
        <td>
            Fax:</td>
        <td>
            <asp:TextBox ID="fax_tb" runat="server"></asp:TextBox>
            </td>
        <td>
         </td>
        </tr>

        <tr>
        <td>
            Street:</td>
        <td>
            <asp:TextBox ID="street_tb" runat="server"></asp:TextBox>
            </td>
        <td></td>
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
        <td>
            City:</td>
        <td>
            <asp:TextBox ID="city_tb" runat="server"></asp:TextBox>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
            State:</td>
        <td>
            <asp:TextBox ID="state_tb" runat="server"></asp:TextBox>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
            Zip:</td>
        <td>
            <asp:TextBox ID="zip_tb" runat="server"></asp:TextBox>
            </td>
        <td></td>
        </tr>
        
    </table>

    <asp:Button ID="home_btn" runat="server" Text="Home" Width="68px" Height="38px" 
            onclick="home_btn_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Text="Logout" Width="68px" Height="38px" 
            onclick="logout_btn_Click" />
    </center>
     </div>
    
   
    </form>
</body>
</html>
