<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateEvent2.aspx.cs" Inherits="CreateEvent2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<center>
<b>
<body>
    <form id="form1" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" 
    style="text-align: left" />
    <div>
    <br />
<div font-family: sans-serif; font-size: 15.75px; font-weight: bold; width: 209px; text-align: center;">
    Create Customer</div>
        <br />
 
    </div>
            <asp:Panel ID="Panel1" runat="server" BorderColor="Black" Font-Size="Medium" 
            GroupingText="Event Information" Height="92px" style="text-align: justify" 
            Width="858px">
                <br />
                <table>
                <tr>
                    <td>Event Name:</td>
                    <td><asp:TextBox ID="eventName_txt" runat="server" Width="225px"></asp:TextBox></td>
                    <td>Event Date:</td>
                    <td><asp:TextBox ID="eventDate" runat="server" Width="225px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Event Location:</td>
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
                                DataValueField="Item_Name">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource_Entree" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:group3_6ConnectionString %>" 
                                SelectCommand="SELECT [Item_Name] FROM [ENTREE_ITEMS]"></asp:SqlDataSource>
                        </td>
                        <td>Qtn.:</td>
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
                                DataValueField="Item_Name">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource_Sides" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:group3_6ConnectionString %>" 
                                SelectCommand="SELECT [Item_Name] FROM [SIDE_ITEMS]"></asp:SqlDataSource>
                        </td>
                        <td>Side2:</td>
                        <td>
                            <asp:DropDownList ID="side2_ddl" runat="server" Height="16px" Width="183px" 
                                DataSourceID="SqlDataSource_Sides" DataTextField="Item_Name" 
                                DataValueField="Item_Name">
                            </asp:DropDownList>
                        </td>
                        <td>Qtn:</td>
                        <td>
                            <asp:TextBox ID="side1_2Qtn_txt" runat="server"  
                                Width="100px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Alter Side1:</td>
                        <td>
                            <asp:DropDownList ID="alterSide1_ddl" runat="server" Height="16px" Width="183px" 
                                DataSourceID="SqlDataSource_Sides" DataTextField="Item_Name" 
                                DataValueField="Item_Name">
                            </asp:DropDownList>
                        </td>
                        <td>Alter. Side2:&nbsp;</td>
                        <td>
                            <asp:DropDownList ID="alterSide2_ddl" runat="server" Height="16px" Width="183px" 
                                DataSourceID="SqlDataSource_Sides" DataTextField="Item_Name" 
                                DataValueField="Item_Name">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;Qtn:</td>
                        <td>
                            <asp:TextBox ID="altrSide1_2Qtn" runat="server" Width="100px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
               
                <b>
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="services" 
                    DataTextField="Service_Name" DataValueField="Service_Name" Width="201px">
                </asp:ListBox>
                <asp:SqlDataSource ID="services" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:group3_6ConnectionString2 %>" 
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
                <asp:TextBox ID="subTotal_chk" runat="server" Width="100px"></asp:TextBox>
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
                <asp:TextBox ID="deposite_txt" runat="server" Width="100px"></asp:TextBox>
                </td>
    </tr>
        <tr>
        <td align="right">Balance :</td>
        <td>
                <asp:TextBox ID="balance_txt" runat="server" Width="100px"></asp:TextBox>
                </td>
    </tr>
    </table>
        &nbsp;<br />
                
    <br />
    <br />

   

        <asp:Button ID="submit_btn" runat="server" BorderColor="Black" 
        BorderStyle="Double" Height="38px" style="text-align: center" Text="Submit" 
        Width="69px" />

   &nbsp;&nbsp;



        <asp:Button ID="back_btn" runat="server" BorderColor="Black" 
        BorderStyle="Double" Height="38px" style="text-align: center" Text="&lt;&lt;Back" 
        Width="69px" />
    &nbsp;&nbsp;



        <asp:Button ID="home_btn" runat="server" BorderColor="Black" 
        BorderStyle="Double" Height="38px" style="text-align: center" Text="Home" 
        Width="69px" />

    &nbsp;&nbsp;

        <asp:Button ID="logout_btn" runat="server" BorderColor="Black" 
        BorderStyle="Double" Height="38px" style="text-align: center" Text="Logout" 
        Width="69px" />

    </form>
</body>
</b>
</center>
</html>
