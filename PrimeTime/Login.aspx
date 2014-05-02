<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 452px;
        }
    </style>
</head>
        <body>
            <center>
            <form id="form1" runat="server">
            <div>
                <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" Style="text-align: left" />
                <br />
                <div style="margin-left: 200px; font-family: sans-serif; font-size: 15.75px; font-weight: bold;
                    width: 396px; text-align: center;">
                    Welcome To Prime Time Catering </div>
            </div>
            <br />
            <asp:Panel ID="Panel1" runat="server" GroupingText="Please Login" 
                Height="247px" Width="710px">
                <br/>
                    <table>
                        <tr>
                            <td>
                                User Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                    runat="server" ControlToValidate="userName_ddl" 
                                    ErrorMessage="Choose your user name" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;</td>
                            <td>
                                <asp:DropDownList ID="userName_ddl" runat="server" 
                                    DataSourceID="usernameLookup" DataTextField="UserName" DataValueField="Emp_ID" 
                                    Width="200px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="usernameLookup" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" SelectCommand="SELECT Emp_ID, (Emp_F_Name + ' ' + Emp_L_Name) AS UserName
FROM Employees
"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Pass Word:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                    runat="server" ControlToValidate="passWord_txt" 
                                    ErrorMessage="Enter your Password" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;</td>
                            <td>
                                <asp:TextBox ID="passWord_txt" runat="server" Style="text-align: left" TextMode="Password"
                                    Width="200"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table>
                        
                            
                            <tr>
                                <td>
                                    <b>
                                        <asp:Button ID="login_btn" runat="server" BorderColor="Black" BorderStyle="Double"
                                            Height="38px" Style="text-align: center" Text="LogIn" Width="162px" 
                                        onclick="login_btn_Click" />
                                    </b>
                                </td>
                            </tr>
                        
                    </table>
                <br/>
                <br/>
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#CC3300" 
                    Visible="False"></asp:Label>
                <br/>
                <br/>
                <br/>
                <br/>
            </asp:Panel>
            </form>
            </center>
        </body>
</html>
