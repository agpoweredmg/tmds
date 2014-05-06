<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateEvent2.aspx.cs" Inherits="CreateEvent2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" 
    style="text-align: left" />
    <div>
    <br />
<div>
    Create Customer</div>
        <br />
 
    </div>
            <asp:Panel ID="Panel1" runat="server" BorderColor="Black" Font-Size="Medium" 
            GroupingText="Event Information" Height="92px" style="text-align: justify" 
            Width="858px">
                <br />
                <table>
                <tr>
                    <td>Event Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            runat="server" ControlToValidate="eventName_txt" 
                            ErrorMessage="Event Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td><asp:TextBox ID="eventName_txt" runat="server" Width="225px"></asp:TextBox></td>
                    <td>Event Date:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                            runat="server" ControlToValidate="eventDate" 
                            ErrorMessage="Event Date is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="eventDate" ErrorMessage="Invalid Date formate" 
                            ForeColor="Red" ValidationExpression="[0-9]{2}/[0-9]{2}/[0-9]{4}">*</asp:RegularExpressionValidator>
                        <asp:TextBox ID="eventDate" runat="server" Width="225px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Event Location:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                            runat="server" ControlToValidate="eventLocation_txt" 
                            ErrorMessage="Event location" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td><asp:TextBox ID="eventLocation_txt" runat="server"></asp:TextBox></td>
                </tr>
                </table>
    </asp:Panel>

    <p>
        &nbsp;</p>
            <asp:Panel ID="Panel2" runat="server" BorderColor="Black" Font-Size="Medium" 
            GroupingText="Meal Details" Height="187px" style="text-align: justify" 
            Width="858px">
                <br />
                <table>
                    <tr>
                        <td>Entree:</td>
                        <td>
                            <asp:DropDownList ID="mealDetails_ddl" runat="server" Height="16px" Width="183px" 
                                DataSourceID="SqlDataSource_Entree" DataTextField="Item_Name" 
                                DataValueField="Item_Name" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource_Entree" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                                
                                SelectCommand="SELECT [Unprepared_Item_ID], [Item_Name] FROM [Unprepared_Item]"></asp:SqlDataSource>
                        </td>
                        <td>Qtn.:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="entreeQtn_txt" 
                                ErrorMessage="The number of entrees is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="entreeQtn_txt" runat="server" Width="100px"></asp:TextBox>
                        </td>
                        <td>Cost:</td>
                        <td>
                            <asp:TextBox ID="entreeCost_txt" runat="server" Width="100px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Side1:</td>
                        <td>
                            <asp:DropDownList ID="side1_ddl" runat="server" Height="16px" Width="183px" 
                                DataSourceID="SqlDataSource_Sides" DataTextField="Item_Name" 
                                DataValueField="Item_Name" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource_Sides" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                                
                                SelectCommand="SELECT [Unprepared_Item_ID], [Item_Name] FROM [Unprepared_Item]"></asp:SqlDataSource>
                        </td>
                        <td>Side2:</td>
                        <td>
                            <asp:DropDownList ID="side2_ddl" runat="server" Height="16px" Width="183px" 
                                DataSourceID="SqlDataSource_Sides" DataTextField="Item_Name" 
                                DataValueField="Item_Name" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>

                </table>
                <br />
                <br />
                <br />
               
                <b>
                <asp:ListBox ID="services_listBox" runat="server" DataSourceID="services" 
                    DataTextField="Service_Name" DataValueField="Service_Name" Width="201px" 
                    SelectionMode="Multiple">
                </asp:ListBox>
                <asp:SqlDataSource ID="services" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                    SelectCommand="SELECT [Service_Name] FROM [Special_Services]">
                </asp:SqlDataSource>
                </b>
               
                <br />
                <br />
    </asp:Panel>


    <br />
            <asp:Panel ID="Panel3" runat="server" BorderColor="Black" Font-Size="Medium" 
            GroupingText="Services" Height="173px" style="text-align: justify; margin-bottom: 4px;" 
            Width="854px">
                <br />
                
                
    </asp:Panel>
    <table>
    <tr>
        <td align="right">Sub Total :</td>
        <td>
                <asp:TextBox ID="subTotal_txt" runat="server" Width="100px"></asp:TextBox>
                </td>
    </tr>
        <tr>
        <td align="right">Tax :</td>
        <td>
                <asp:TextBox ID="tax_txt" runat="server" Width="100px"></asp:TextBox>
                </td>
    </tr>
        <tr>
        <td align="right">Total :</td>
        <td>
                <asp:TextBox ID="total_txt" runat="server" Width="100px"></asp:TextBox>
                </td>
    </tr>
        <tr>
        <td align="right">Deposit :</td>
        <td>
                <asp:TextBox ID="deposite_txt" runat="server" Width="100px" Height="23px"></asp:TextBox>
                </td>
    </tr>
        <tr>
        <td align="right">Balance :</td>
        <td>
                <asp:TextBox ID="balance_txt" runat="server" Width="100px"></asp:TextBox>
                </td>
    </tr>
    </table>
        <asp:ValidationSummary 
        ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <br />
                
    <b>
                <asp:Button ID="clear_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                    Height="38px" Style="text-align: center" Text="Clear" Width="69px" 
                    onclick="clear_btn_Click" CausesValidation="False" />
                </b>

     &nbsp;&nbsp;

        <asp:Button ID="submit_btn" runat="server" BorderColor="Black" 
        BorderStyle="Double" Height="38px" style="text-align: center" Text="Submit" 
        Width="69px" onclick="submit_btn_Click" />

   &nbsp;&nbsp;



        <asp:Button ID="back_btn" runat="server" BorderColor="Black" 
        BorderStyle="Double" Height="38px" style="text-align: center" Text="&lt;&lt;Back" 
        Width="69px" onclick="back_btn_Click" CausesValidation="False" />
    &nbsp;&nbsp;



        <asp:Button ID="home_btn" runat="server" BorderColor="Black" 
        BorderStyle="Double" Height="38px" style="text-align: center" Text="Home" 
        Width="69px" onclick="home_btn_Click" CausesValidation="False" />

    &nbsp;&nbsp;

        <asp:Button ID="logout_btn" runat="server" BorderColor="Black" 
        BorderStyle="Double" Height="38px" style="text-align: center" Text="Logout" 
        Width="69px" onclick="logout_btn_Click" CausesValidation="False" />

    </form>
    </center>
</body>
</html>
