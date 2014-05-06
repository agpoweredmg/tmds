<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editContractInfo.aspx.cs"
    Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <center>
                <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" />
                <table>
                    <tr>
                        <td>
                        </td>
                        <th>
                            Contracts Information Details</th>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contract ID:
                        </td>
                        <td>
                            <asp:TextBox ID="contractID_tb" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ContractID_rf" runat="server" 
                                ErrorMessage="Contract ID is required." ControlToValidate="contractID_tb" 
                                ForeColor="Maroon">*</asp:RequiredFieldValidator>
                            <asp:Label ID="ContractID_lbl" runat="server" Text="Contract ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="submit_btn" runat="server" Text="Submit" 
                                onclick="submit_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                                onclick="clear_btn_Click" CausesValidation="False" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Account ID:
                        </td>
                        <td>
                            <asp:TextBox ID="accountID_tb" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="AccountID_rf" runat="server" 
                                ErrorMessage="Account ID is required." ControlToValidate="accountID_tb" 
                                ForeColor="Maroon">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="AccountID_cv" runat="server" 
                                ControlToValidate="accountID_tb" 
                                ErrorMessage="Account ID must be numeric only." ForeColor="Maroon" 
                                Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                            <asp:Label ID="AccountID_lbl" runat="server" Text="Account ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="actionToPerform_ddl" runat="server" 
                                onselectedindexchanged="actionToPerform_ddl_SelectedIndexChanged" 
                                AutoPostBack="True">
                                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                            <asp:ListItem Value="1">Add Contract</asp:ListItem>
                            <asp:ListItem Value="2">Delete Contract</asp:ListItem>
                            <asp:ListItem Value="3">Update Contract</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contract Date:
                        </td>
                        <td>
                            <asp:TextBox ID="contractDate_tb" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="ContractDate_rv" runat="server" 
                ControlToValidate="contractDate_tb" 
                ErrorMessage="Date must be between today's date and 4/1/2025. " MaximumValue="4/1/2025" 
                MinimumValue="5/2/2014" Type="Date" ForeColor="Maroon">*</asp:RangeValidator>
            <asp:RegularExpressionValidator ID="ContractDate_RegEx" runat="server" 
                ControlToValidate="contractdate_tb" 
                ErrorMessage="The contract date must in MM/DD/YYYY format."  
                ValidationExpression="[0-9]{2}/[0-9]{2}/[0-9]{4}" ForeColor="Maroon">*</asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;
                            <asp:DropDownList ID="chooseContract_ddl" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource1" DataTextField="Contract_ID" 
                                DataValueField="Acct_ID" 
                                onselectedindexchanged="chooseContract_ddl_SelectedIndexChanged" 
                                Visible="False">
                                <asp:ListItem Value="0">Choose Contract:</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Deposit Amount:
                        </td>
                        <td>
                            <asp:TextBox ID="depositAmount_tb" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="DepositAmount_cv" runat="server" 
                                ControlToValidate="depositAmount_tb" 
                                ErrorMessage="Deposit must be greater than zero." ForeColor="Maroon" 
                                Operator="GreaterThanEqual" ValueToCompare="0">*</asp:CompareValidator>
                            <asp:CompareValidator ID="DepositAmount2_cv" runat="server" 
                                ControlToValidate="depositAmount_tb" 
                                ErrorMessage="Deposit Amount must be numeric." ForeColor="Maroon" 
                                Operator="DataTypeCheck" Type="Double">*</asp:CompareValidator>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Discount:
                        </td>
                        <td>
                            <asp:TextBox ID="discount_tb" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="Discount_cv" runat="server" 
                                ControlToValidate="discount_tb" 
                                ErrorMessage="Discount cannot be greater than 25 or less than 0." 
                                ForeColor="Maroon" Operator="GreaterThanEqual" ValueToCompare="0">*</asp:CompareValidator>
                            <asp:CompareValidator ID="Discount2_cv" runat="server" 
                                ControlToValidate="discount_tb" 
                                ErrorMessage="Discount cannot be greater than 25 or less than 0." 
                                ForeColor="Maroon" Operator="LessThanEqual" ValueToCompare="25">*</asp:CompareValidator>
                        </td>
                        <td>
                            &nbsp;
                        <td>
                    </tr>
                </table>
            </center>
            <br />
            <br />
            <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px" Width="68px" 
                onclick="home_btn_Click" CausesValidation="False" />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px" 
                Width="68px" onclick="logout_btn_Click" CausesValidation="False" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                SelectCommand="SELECT * FROM [Contract_Details]"></asp:SqlDataSource>
            <asp:ValidationSummary ID="EditContractInfo_vs" runat="server" 
                ForeColor="Maroon" HeaderText="You received the following Errors:" />
            <br />
        </div>
    </div>
    </form>
</body>
</html>
