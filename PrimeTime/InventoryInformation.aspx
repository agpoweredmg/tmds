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
        <asp:Label ID="Label1" runat="server" Text="Inventory Information Details"></asp:Label>
            </th>
            <th></th>
        </tr>
        <tr>
        <td>
            ID:</td>
        <td>
            <asp:TextBox ID="id_tb" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="ID_cv" runat="server" ControlToValidate="id_tb" 
                ErrorMessage="CompareValidator" ForeColor="Maroon" Operator="DataTypeCheck" 
                Type="Integer">*</asp:CompareValidator>

            <asp:RequiredFieldValidator ID="ID_rf" runat="server" ControlToValidate="id_tb" 
                ErrorMessage="ID is required." ForeColor="Maroon">*</asp:RequiredFieldValidator>
            <asp:Label ID="ID_lbl" runat="server" Text="Label" Visible="False"></asp:Label>

            </td>
        <td>
    &nbsp;<asp:Button ID="submit_btn" runat="server" Text="Submit" Width="61px" 
                onclick="submit_btn_Click" />
    &nbsp;&nbsp;<asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                onclick="clear_btn_Click" CausesValidation="False" />
            &nbsp;&nbsp;</td>
        </tr>

        <tr>
        <td>
            Name:</td>
        <td>
            <asp:TextBox ID="name_tb" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="Name_RegEx" runat="server" 
                ControlToValidate="name_tb" ErrorMessage="RegularExpressionValidator" 
                ForeColor="Maroon" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
            <asp:Label ID="Name_lbl" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        <td>
            &nbsp;<asp:DropDownList ID="chooseAction_ddl" runat="server" 
                Height="16px" Width="133px" 
                onselectedindexchanged="chooseAction_SelectedIndexChanged" 
                AutoPostBack="True">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
            <asp:ListItem Value="1">Add Inventory</asp:ListItem>
            <asp:ListItem Value="2">Delete Inventory</asp:ListItem>
            <asp:ListItem Value="3">Update Inventory</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>

        <tr>
        <td>
            Category:</td>
        <td>
            <asp:TextBox ID="category_tb" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="category_tb" ErrorMessage="Category Name is invalid." 
                ForeColor="Maroon" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
            </td>
        <td>
            <asp:DropDownList ID="ChooseInventoryID_ddl" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="Inventory_ID" 
                DataValueField="Item_Name" 
                onselectedindexchanged="ChooseInventoryID_ddl_SelectedIndexChanged" 
                Visible="False">
            </asp:DropDownList>
            </td>
        </tr>

        <tr>
        <td>
            Cost: </td>
        <td>
            <asp:TextBox ID="cost_tb" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="Cost_cv" runat="server" ControlToValidate="cost_tb" 
                ErrorMessage="CompareValidator" ForeColor="Maroon" Operator="DataTypeCheck" 
                Type="Double">*</asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToValidate="cost_tb" 
                ErrorMessage="Cost must be greater than or equal to zero." ForeColor="Maroon" 
                Operator="GreaterThanEqual" ValueToCompare="0">*</asp:CompareValidator>
            </td>
        <td>
            &nbsp;</td>
        </tr>

        <tr>
        <td>
            Expiration Date:</td>
        <td>
            <asp:TextBox ID="expirationDate_tb" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="ExpirationDate_RegEx" runat="server" 
                ControlToValidate="expirationDate_tb" 
                ErrorMessage="The contract date must in MM/DD/YYYY format." ForeColor="Maroon" 
                ValidationExpression="[0-9]{2}/[0-9]{2}/[0-9]{4}">*</asp:RegularExpressionValidator>
            <asp:RangeValidator ID="ExpirationDate_cv" runat="server" 
                ControlToValidate="expirationDate_tb" 
                ErrorMessage="Date must be between today's date and 4/1/2025. " MaximumValue="4/1/2025" 
                MinimumValue="5/2/2014" Type="Date" ForeColor="Maroon">*</asp:RangeValidator>
            </td>
        <td>
            &nbsp;</td>
        </tr>

        <tr>
        <td>
            Quantity On Hand:</td>
        <td>
            <asp:TextBox ID="quantityOnHand_tb" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="QuantityOnHand_cv" runat="server" 
                ControlToValidate="quantityOnHand_tb" ErrorMessage="Quantity On Hand must be numeric." 
                ForeColor="Maroon" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
            <asp:CompareValidator ID="QuantityOnHand2_cv" runat="server" 
                ControlToValidate="quantityOnHand_tb" ErrorMessage="Quantity must be greater than or equal to zero." 
                ForeColor="Maroon" Operator="GreaterThanEqual" ValueToCompare="0">*</asp:CompareValidator>
            </td>
        <td>&nbsp;</td>
        </tr>

        <tr>
        <td>
            Minimum:</td>
        <td>
            <asp:TextBox ID="minimum_tb" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="Minimum_cv" runat="server" 
                ControlToValidate="minimum_tb" ErrorMessage="Minimum must be greater than or equal to zero." 
                ForeColor="Maroon" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
            <asp:CompareValidator ID="Minimum2_cv" runat="server" 
                ControlToValidate="minimum_tb" ErrorMessage="Minimum must be greater or equal than five." 
                ForeColor="Maroon" Operator="GreaterThanEqual" ValueToCompare="5">*</asp:CompareValidator>
            </td>
        <td></td>
        </tr>

        <tr>
        <td>
            Maximum:</td>
        <td>
            <asp:TextBox ID="maximum_tb" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="Maximum_cv0" runat="server" 
                ControlToValidate="maximum_tb" ErrorMessage="Maximum must be greater than or equal to zero." 
                ForeColor="Maroon" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
            <asp:CompareValidator ID="Maximum2_cv" runat="server" 
                ControlToValidate="maximum_tb" ErrorMessage="Maximum must be less than 500. " 
                ForeColor="Maroon" Operator="LessThanEqual" ValueToCompare="500">*</asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                ControlToValidate="maximum_tb" ErrorMessage="Maximum must be greater than 5." 
                ForeColor="Maroon" Type="Integer" ValueToCompare="5">*</asp:CompareValidator>
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
    <asp:Button ID="home_btn" runat="server" Text="Home" Width="68px" Height="38px" 
            onclick="home_btn_Click" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Text="Logout" Width="68px" Height="38px" 
            onclick="logout_btn_Click" CausesValidation="False" />
            <asp:ValidationSummary ID="InventoryInformation_vs" runat="server" 
                ForeColor="Maroon" HeaderText="You received the following Errors:" />
     </center>
     </div>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" SelectCommand="SELECT *
FROM [Inventory] I, Unprepared_Item UI
WHERE I.Unprepared_Item_ID = UI.Unprepared_Item_ID"></asp:SqlDataSource>
    </form>
</body>
</html>
