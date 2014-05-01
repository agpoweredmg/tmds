<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InvalidLoginCredentials.aspx.cs" Inherits="InvalidLoginCredentials" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 666px;
            height: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center><img alt="" class="style1" src="youHaveNoPowerHere.jpg" /></center>
    </div>
    <div>
       <center> <asp:Button ID="Button1" runat="server" Text="Return to Login Page" 
               Height="50px" onclick="Button1_Click" /> </center>
    </div>
    </form>
</body>
</html>
