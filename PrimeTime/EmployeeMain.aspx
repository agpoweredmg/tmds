<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeMain.aspx.cs" Inherits="EmployeeMain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"></head>
<body>
    <form id="form1" runat="server">
   <div>
    <center>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/untitled.png" />
    <table>
    
    <tr>
    <th>
    Employee Main Menu
   </th>
   </tr>
   
   <tr>
   <th>
    <asp:Button ID="createEvent_btn" runat="server" Height="38px" Text="Create Event" 
        Width="151px" style="margin-left: 0px" onclick="createEvent_btn_Click"  />
    </th>
    </tr>
    
    <tr>
    <th>
    <asp:Button ID="informationLookup_btn" runat="server" Height="38px" Text="Information Lookup" 
        Width="150px" onclick="informationLookup_btn_Click" />
   </th>
   </tr>
   
   <tr>
    <th>
    <asp:Button ID="timeManagment_btn" runat="server" Height="38px" Text="Time Managment" 
        Width="150px" onclick="timeManagment_btn_Click" />
    </th>
    </tr> 
      
     <tr>    
     <th>
            <asp:Button ID="logout_btn" runat="server" BorderColor="Black" 
                BorderStyle="Double" Height="38px" style="text-align: center" Text="Logout" 
                Width="69px" onclick="logout_btn_Click" />
     </th>
     </tr>   
    
    </table>
    </center>
    </div>
    </form>

</body>
</html>
