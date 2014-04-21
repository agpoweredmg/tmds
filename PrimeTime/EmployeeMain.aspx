<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeMain.aspx.cs" Inherits="EmployeeMain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<b>
<body>
<center>
    <form id="form1" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" 
    style="text-align: left" />
    <div>
    <br />
<div style="margin-left: 200px; font-family: sans-serif; font-size: 15.75px; font-weight: bold; width: 209px; text-align: center;">
    Emplyee Main Menu</div>
    </div>
    <p>
        &nbsp;</p>
    <p>
    <center>
    <asp:Button ID="createEvent_btn" runat="server" Height="38px" Text="Create Event" 
        Width="151px" style="margin-left: 0px" onclick="createEvent_btn_Click"  />
    <p>
    <asp:Button ID="infromationLookup_btn" runat="server" Height="38px" Text="Information Lookup" 
        Width="150px" onclick="infromationLookup_btn_Click" />
    </p>
    <p>
    <asp:Button ID="timeManagment_btn" runat="server" Height="38px" Text="Time Managment" 
        Width="150px" onclick="timeManagment_btn_Click" />
    </p>
        <p>
            &nbsp;</p>
    </center>
    <p>
            <asp:Button ID="logout_btn" runat="server" BorderColor="Black" 
                BorderStyle="Double" Height="38px" style="text-align: center" Text="Logout" 
                Width="69px" />

            </p>
    </form>
    </center>
</body>
</b>

</html>
