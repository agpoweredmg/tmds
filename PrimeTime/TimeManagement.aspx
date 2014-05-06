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
                <asp:DropDownList ID="timeIn_ddl" runat="server" 
                    onselectedindexchanged="timeIn_ddl_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="timeInMinutes_ddl" runat="server" 
                    onselectedindexchanged="timeInMinutes_ddl_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Time Out:</td>
            <td>
                <asp:DropDownList ID="timeOut_ddl" runat="server" 
                    onselectedindexchanged="timeOut_ddl_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="timeOutMinutes_ddl" runat="server" 
                    onselectedindexchanged="timeOutMinutes_ddl_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>

                Job Preformed</td>
            <td>

                <asp:DropDownList ID="jobPerformed_ddl" runat="server" DataSourceID="jobPerformed" 
                    DataTextField="Job_Desc" DataValueField="Job_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="jobPerformed" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
                    SelectCommand="SELECT [Job_ID], [Job_Desc] FROM [Jobs]"></asp:SqlDataSource>

            </td>
        </tr>
        <tr>
            <td>Hours Worked:</td>
            <td>
                <asp:Label ID="hoursWorked_lbl" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <b>
    <asp:Button ID="enterTime_btn" runat="server" Height="38px" Text="Enter Time" 
        Width="151px" style="margin-left: 0px" onclick="enterTime_btn_Click"  />
    <br />
    <br />

   

   &nbsp;&nbsp;



        &nbsp;&nbsp;



        <asp:Button ID="home_btn" runat="server" BorderColor="Black" 
        BorderStyle="Double" Height="38px" style="text-align: center" Text="Home" 
        Width="69px" onclick="home_btn_Click" />

    &nbsp;&nbsp;

        <asp:Button ID="logout_btn" runat="server" BorderColor="Black" 
        BorderStyle="Double" Height="38px" style="text-align: center" Text="Logout" 
        Width="69px" onclick="logout_btn_Click" />

    </b>
    </form>
    </center>
</body>
</html>
