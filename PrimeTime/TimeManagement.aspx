<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TimeManagement.aspx.cs" Inherits="TimeManagment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" />
    
    </div>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Employee Time Managment"></asp:Label>
    <br />
    <br />
    <table>
        <tr>
            <td>
                Time In:</td>
            <td>
    <b>
                <asp:TextBox ID="timeIn_txt" runat="server" Style="text-align: left" Width="200"></asp:TextBox>
    </b>
            </td>
        </tr>
        <tr>
            <td>Time Out:</td>
            <td>
    <b>
                <asp:TextBox ID="timeOut_txt" runat="server" Style="text-align: left" 
                    Width="200"></asp:TextBox>
    </b>
            </td>
        </tr>
        <tr>
            <td>Hours Worked:</td>
            <td>
    <b>
                <asp:TextBox ID="hoursWorked_txt" runat="server" Style="text-align: left" 
                    Width="200"></asp:TextBox>
    </b>
            </td>
        </tr>
    </table>
    <br />
    <b>
    <asp:Button ID="enterTime_btn" runat="server" Height="38px" Text="Enter Time" 
        Width="151px" style="margin-left: 0px" onclick="enterTime_btn_Click"  />
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

    </b>
    </form>
    </center>
</body>
</html>
