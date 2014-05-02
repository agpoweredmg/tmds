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
        <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" Style="text-align: left" />
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
                        <td> 
                            <asp:Label ID="newCustomer_lbl" runat="server" Text="Customer ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="custId_ddl" runat="server" DataSourceID="SqlDataSource1" 
                                DataTextField="Cust_L_Name" DataValueField="Customer_ID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                                SelectCommand="SELECT [Customer_ID], [Cust_L_Name] FROM [Customers]">
                            </asp:SqlDataSource>
                        </td>

                        
                    </tr>
                    
                    <tr>
                        <td>
                            First Name:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="firstName_txt" ErrorMessage="First Name is Required" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="firstName_txt" ErrorMessage="Invalid name format" 
                                ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="firstName_txt" runat="server" width = 200 
                                Style="text-align: left" ontextchanged="firstName_txt_TextChanged"></asp:TextBox>
                        </td>
                        <td>Last Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" ControlToValidate="lastName_txt" 
                                ErrorMessage="Last Name is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="lastName_txt" ErrorMessage="Invalid last name format" 
                                ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
                        </td>
                        <td>               
                            <asp:TextBox ID="lastName_txt" runat="server" Style="text-align: left" 
                                Width="200px"></asp:TextBox>
                </td>
                    </tr>
                    <tr>
                    <td class="style2">Phone 1:<asp:RegularExpressionValidator 
                            ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone1_txt" 
                            ErrorMessage="Invalid phone number format" ForeColor="Red" 
                            ValidationExpression="[(][0-9]{3}[)][0-9]{3}-[0-9]{4}">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="phone1_txt" ErrorMessage="Phone number is required" 
                            ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    <td><asp:TextBox ID="phone1_txt" runat="server" Style="text-align: left" 
                            Width="200px"></asp:TextBox>
                            </td>
                    <td>Phone 2:<asp:RegularExpressionValidator ID="RegularExpressionValidator5" 
                            runat="server" ControlToValidate="phone2_txt" 
                            ErrorMessage=" Invalid phone number" ForeColor="Red" 
                            ValidationExpression="[(][0-9]{3}[)][0-9]{3}-[0-9]{4}">*</asp:RegularExpressionValidator>
                        </td>
                    <td><asp:TextBox
                    ID="phone2_txt" runat="server" Style="text-align: left" Width="200px"></asp:TextBox></td>
                    <td>Email:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="email_txt" ErrorMessage="Email is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                            ControlToValidate="email_txt" EnableTheming="True" ErrorMessage="Invalid email" 
                            ForeColor="Red" 
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        <asp:TextBox
                    ID="email_txt" runat="server" Style="text-align: left" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">Street:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" ControlToValidate="street_txt" ErrorMessage="Street is Required" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="style4"><asp:TextBox ID="street_txt" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td class="style4">Apt./Suite:</td>
                        <td class="style4"><asp:TextBox ID="apt_suite_txt"
                    runat="server" Style="text-align: left" Width="200px"></asp:TextBox></td>
                    <td class="style4">City:<asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                            runat="server" ControlToValidate="city_txt" ErrorMessage="City is Required" 
                            ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                            ControlToValidate="city_txt" ErrorMessage="Invalid city name" ForeColor="Red" 
                            ValidationExpression="[a-zA-Z._^%$#!~@,-]+.">*</asp:RegularExpressionValidator>
                        </td>
                    <td class="style4"><asp:TextBox ID="city_txt" runat="server" Style="text-align: left" 
                            Width="200px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="style2">State:<asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                                runat="server" ControlToValidate="state_txt" ErrorMessage="State is required" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                ControlToValidate="state_txt" ErrorMessage="Invalid State" ForeColor="Red" 
                                ValidationExpression="^(A[LKSZAEP]|C[AOT]|D[EC]|F[LM]|G[ANU]|HI|I[ADLN]|K[SY]|LA|M[ADEHINOPST]|N[CDEHJMVY]|O[HKR]|P[ARW]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY])$">*</asp:RegularExpressionValidator>
                        </td>
                        <td><asp:TextBox ID="state_txt" runat="server" Width="200px"></asp:TextBox></td>
                        <td>Zip Code:<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="zip_txt" ErrorMessage="Zip Code is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td><asp:TextBox ID="zip_txt" runat="server" Style="text-align: left" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr><td class="style2">Billing Adress:</td></tr>
                    <tr><td> 
                        <asp:CheckBox ID="sameAsMailling_chk" runat="server" 
                            Text="Same As Mailling Address" 
                            oncheckedchanged="sameAsMailling_chk_CheckedChanged" AutoPostBack="True" 
                             /></td></tr>
                    <tr>
                        <td class="style2">Street:<asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
                                runat="server" ControlToValidate="billingStreet_txt" 
                                ErrorMessage="Billing street is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td><asp:TextBox ID="billingStreet_txt" runat="server" Width="200px"></asp:TextBox></td>
                        <td>Apt./Suite:</td>
                        <td><asp:TextBox ID="billlingSuiteApt_txt"
                    runat="server" Style="text-align: left" Width="200px" 
                                ></asp:TextBox></td>
                    <td>City:<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="billingCity_txt" ErrorMessage="city is required" 
                            ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                            ControlToValidate="billingCity_txt" ErrorMessage="Invalid city name" 
                            ForeColor="Red" ValidationExpression="[a-zA-Z._^%$#!~@,-]+.">*</asp:RegularExpressionValidator>
                        </td>
                    <td><asp:TextBox ID="billingCity_txt" runat="server" Style="text-align: left" 
                            Width="200px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="style2">State:<asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
                                runat="server" ControlToValidate="billingState_txt" 
                                ErrorMessage="billing state is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                                runat="server" ControlToValidate="billingState_txt" 
                                ErrorMessage="Invalid state" ForeColor="Red" 
                                ValidationExpression="^(A[LKSZAEP]|C[AOT]|D[EC]|F[LM]|G[ANU]|HI|I[ADLN]|K[SY]|LA|M[ADEHINOPST]|N[CDEHJMVY]|O[HKR]|P[ARW]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY])$">*</asp:RegularExpressionValidator>
                        </td>
                        <td><asp:TextBox ID="billingState_txt" runat="server" Width="200px"></asp:TextBox></td>
                        <td>Zip Code:<asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                                runat="server" ControlToValidate="billingZip_txt" 
                                ErrorMessage="Invalid billing zipcode" ForeColor="Red" 
                                ValidationExpression="[0-9]{5}">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="billingZip_txt" ErrorMessage="Billing zipcode is required" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
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
                    onclick="home_btn_Click" CausesValidation="False" />
                &nbsp;&nbsp;

                <asp:Button ID="logout_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                    Height="38px" Style="text-align: center" Text="Logout" Width="69px" 
                    CausesValidation="False" onclick="logout_btn_Click" />



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
