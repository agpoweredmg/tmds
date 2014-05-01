<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateEvent1.aspx.cs" Inherits="CreateEvent1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 180px;
        }
        .style3
        {
            width: 180px;
            height: 45px;
        }
        .style4
        {
            height: 45px;
        }
        </style>
</head>

    <body>
        <center>
        <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" Style="text-align: left" />
        <div>
            <div style="margin-left: 200px; font-family: sans-serif; font-size: 15.75px; font-weight: bold;
                width: 209px; text-align: center;">
                Create Customer</div>

            <asp:Panel ID="Panel1" runat="server" BorderColor="Black" Font-Size="Medium" GroupingText="Customers Information"
                Height="539px" Style="text-align: justify" Width="1112px">
                <br />
                <table>
                    <tr>
                        <td class="style2">
                        
                            <asp:RadioButtonList ID="returned_Or_newCustomer_rd_group" runat="server" 
                                onselectedindexchanged="returned_Or_newCustomer_rd_group_SelectedIndexChanged">
                                <asp:ListItem Value="1">Returning Customer</asp:ListItem>
                                <asp:ListItem Value="0">New Customer</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td> &nbsp;Customer ID:</td>
                        <td><asp:TextBox
                                ID="customerId_txt" runat="server" width = "200" Style="text-align: left" 
                                ></asp:TextBox></td>

                        
                    </tr>
                    
                    <tr>
                        <td>
                            First Name:
                        </td>
                        <td>
                            <asp:TextBox ID="firstName_txt" runat="server" width = 200 
                                Style="text-align: left" ontextchanged="firstName_txt_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="First Name is Required" ControlToValidate="firstName_txt" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td>Last Name:</td>
                        <td>               
                            <asp:TextBox ID="lastName_txt" runat="server" Style="text-align: left" 
                                Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Last Name is Required" ControlToValidate="lastName_txt" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                    </tr>
                    <tr>
                    <td class="style2">Phone 1:</td>
                    <td><asp:TextBox ID="phone1_txt" runat="server" Style="text-align: left" 
                            Width="200px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                runat="server" ErrorMessage="RegularExpressionValidator" 
                            ControlToValidate="phone1_txt" ForeColor="Red" 
                            ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator></td>
                    <td>Phone 2:</td>
                    <td><asp:TextBox
                    ID="phone2_txt" runat="server" Style="text-align: left" Width="200px"></asp:TextBox></td>
                    <td>Email:</td>
                    <td><asp:TextBox
                    ID="email_txt" runat="server" Style="text-align: left" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="Email is Required" ControlToValidate="email_txt" 
                                ForeColor="Red">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="style3"><b>Street:</b></td>
                        <td class="style4"><asp:TextBox ID="street_txt" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="Street is Required" ControlToValidate="street_txt" 
                                ForeColor="Red">*</asp:RequiredFieldValidator></td>
                        <td class="style4">Apt./Suite:</td>
                        <td class="style4"><asp:TextBox ID="apt_suite_txt"
                    runat="server" Style="text-align: left" Width="200px"></asp:TextBox></td>
                    <td class="style4">City:</td>
                    <td class="style4"><asp:TextBox ID="city_txt" runat="server" Style="text-align: left" 
                            Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                runat="server" ErrorMessage="City is Required" ForeColor="Red" 
                            ControlToValidate="city_txt">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="style2">State:</td>
                        <td><asp:TextBox ID="state_txt" runat="server" Width="200px"></asp:TextBox></td>
                        <td>Zip Code:</td>
                        <td><asp:TextBox ID="zip_txt" runat="server" Style="text-align: left" Width="200px"></asp:TextBox>
                        <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator2" runat="server" 
                                ErrorMessage="Zip Code Required" ControlToValidate="zip_txt" ForeColor="Red" 
                                ValidationExpression="[0-9]{5}">*</asp:RegularExpressionValidator></td>
                    </tr>
                    <tr><td class="style2">Billing Adress:</td></tr>
                    <tr><td> 
                        <asp:CheckBox ID="sameAsMailling_chk" runat="server" 
                            Text="Same As Mailling Address" oncheckedchanged="sameAsMailling_chk_CheckedChanged" 
                             /></td></tr>
                    <tr>
                        <td class="style2"><b>Street:</b></td>
                        <td><asp:TextBox ID="billingStreet_txt" runat="server" Width="200px"></asp:TextBox></td>
                        <td>Apt./Suite:</td>
                        <td><asp:TextBox ID="billlingSuiteApt_txt"
                    runat="server" Style="text-align: left" Width="200px" 
                                ></asp:TextBox></td>
                    <td>City:</td>
                    <td><asp:TextBox ID="billingCity_txt" runat="server" Style="text-align: left" 
                            Width="200px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="style2">State:</td>
                        <td><asp:TextBox ID="billingState_txt" runat="server" Width="200px"></asp:TextBox></td>
                        <td>Zip Code:</td>
                        <td><asp:TextBox ID="billingZip_txt" runat="server" Style="text-align: left" 
                                Width="200px"></asp:TextBox></td>
                    </tr>
                </table>
               
                <br />
                <br />
                <asp:Button ID="clear_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                    Height="38px" Style="text-align: center" Text="Clear" Width="69px" 
                    onclick="clear_btn_Click" CausesValidation="False" />
                &nbsp;&nbsp;
                <asp:Button ID="home_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                    Height="38px" Style="text-align: center" Text="Home" Width="69px" 
                    onclick="home_btn_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="logout_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                    Height="38px" Style="text-align: center" Text="Logout" Width="69px" 
                    CausesValidation="False" onclick="logout_btn_Click" 
                     />
                &nbsp;&nbsp;
                <asp:Button ID="next_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                    Height="38px" Style="text-align: center" Text="Next>>" Width="69px" 
                    onclick="next_btn_Click" />
                <br />
            </asp:Panel>
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <br />
        </div>
        </form>
        </center>
    </body>
</html>
