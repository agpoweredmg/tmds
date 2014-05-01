<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editSupInfo.aspx.cs" Inherits="editSupInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
        .style1
        {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <h2 style="font-family: sans-serif; width: 1013px; text-align: center;">
                <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" Style="text-align: center" />
            </h2>
            <table>
                <tr>
                    <th>
                    </th>
                    <th>
                        Edit Supplier Information
                    </th>
                    <th>
                    </th>
                </tr>
                <tr>
                    <th>
                        SupplierID:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierID_tb" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SupplierID_rf" runat="server" 
                            ControlToValidate="supplierID_tb" ErrorMessage="Supplier ID is required" 
                            ForeColor="Maroon">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="SupplierID_cv" runat="server" 
                            ControlToValidate="supplierID_tb" ErrorMessage="Supplier ID must be valid" 
                            ForeColor="Maroon" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                    </th>
                    <th>
                        <asp:Button ID="submit_btn" runat="server" Text="Submit" 
                            onclick="submit_btn_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                            onclick="clear_btn_Click" />
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Name:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierName_tb" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="SupplierName_RegEx" runat="server" 
                            ControlToValidate="supplierName_tb" ErrorMessage="Invalid Supplier Name" 
                            ForeColor="Maroon" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
                        &nbsp;&nbsp;&nbsp;
                    </th>
                    <th>
                        <asp:DropDownList ID="actionToPerform_ddl" runat="server" 
                            onselectedindexchanged="actionToPerform_ddl_SelectedIndexChanged">
                            <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                            <asp:ListItem Value="1">Add New Supplier</asp:ListItem>
                            <asp:ListItem Value="2">Update Supplier </asp:ListItem>
                            <asp:ListItem Value="3">Search Supplier ID</asp:ListItem>
                            <asp:ListItem Value="4">Delete Supplier</asp:ListItem>
                        </asp:DropDownList>
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Phone:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierPhone_tb" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="SupplierPhone_Regex" runat="server" 
                            ControlToValidate="supplierPhone_tb" ErrorMessage="Invalid Supplier Phone" 
                            ForeColor="Maroon" 
                            
                            ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$">*</asp:RegularExpressionValidator>
                        &nbsp;&nbsp;&nbsp;
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Fax:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierFax_tb" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="SupplierFax_RegEx" runat="server" 
                            ControlToValidate="supplierFax_tb" ErrorMessage="RegularExpressionValidator" 
                            ForeColor="Maroon" 
                            
                            ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$">*</asp:RegularExpressionValidator>
                    &nbsp;&nbsp;&nbsp;
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Email:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierEmail_tb" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="SupplierEmail_RegEx" runat="server" 
                            ControlToValidate="supplierEmail_tb" 
                            ErrorMessage="Email must be a valid format" ForeColor="Maroon" 
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    &nbsp;&nbsp;&nbsp;
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier Street:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierStreet_tb" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SupplierStreet_RegEx" runat="server" 
                            ControlToValidate="supplierStreet_tb" 
                            ErrorMessage="Supplier Street is required" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier City:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierCity_tb" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="SupplierCity_RegEx" runat="server" 
                            ControlToValidate="supplierCity_tb" ErrorMessage="CompareValidator" 
                            ForeColor="Maroon" Operator="DataTypeCheck">*</asp:CompareValidator>
                    &nbsp;&nbsp;&nbsp;
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Supplier State:
                    </th>
                    <th>
                        <asp:TextBox ID="supplierState_tb" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="SupplierState_RegEx" runat="server" 
                            ControlToValidate="supplierState_tb" ErrorMessage="Invalid State Abbreviation" 
                            ForeColor="Maroon" 
                            
                            
                            ValidationExpression="^(A[LKSZAEP]|C[AOT]|D[EC]|F[LM]|G[ANU]|HI|I[ADLN]|K[SY]|LA|M[ADEHINOPST]|N[CDEHJMVY]|O[HKR]|P[ARW]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY])$">*</asp:RegularExpressionValidator>
                    &nbsp;&nbsp;&nbsp;
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th class="style1">
                        Supplier Zip:
                    </th>
                    <th class="style1">
                        <asp:TextBox ID="supplierZip_tb" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="SupplierZip_RegEx" runat="server" 
                            ControlToValidate="supplierZip_tb" ErrorMessage="Invalid Zip Code" 
                            ForeColor="Maroon" 
                            
                            ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$">*</asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;
                    </th>
                    <th class="style1">
                        &nbsp;
                    </th>
                </tr>
            </table>
        </center>
    </div>
    <br />
    <asp:Button ID="home_btn" runat="server" Height="38px" Text="Home" Width="68px" 
        onclick="home_btn_Click" CausesValidation="False" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Height="38px" Text="Logout" 
        Width="68px" onclick="logout_btn_Click" CausesValidation="False" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:ValidationSummary ID="editSupInfo_vs" runat="server" 
        ForeColor="Maroon" DisplayMode="List" 
        HeaderText="You received the following Errors:" EnableClientScript="False" 
        EnableViewState="False" />
    <br />
    </form>
</body>
</html>
