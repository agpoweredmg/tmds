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
                <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" Style="text-align: left" />
                <br />
                <div style="margin-left: 200px; font-family: sans-serif; font-size: 15.75px; font-weight: bold;
                    width: 396px; text-align: center;">
                    Welcome To Prime Time Catering </div>
            </div>
            <br />
            <asp:Panel ID="Panel1" runat="server" GroupingText="Please Login" 
                Height="183px" Width="710px">
                <br/>
                    <table>
                        <tr>
                            <td>
                                User Name:
                            </td>
                            <td>
                                <asp:TextBox ID="userName_txt" runat="server" Style="text-align: left" Width="200"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Pass Word:
                            </td>
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
                <br/>
                <br/>
                <br/>
                <br/>
            </asp:Panel>
            </form>
            </center>
        </body>
</html>
