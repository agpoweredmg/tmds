<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeInformation.aspx.cs" Inherits="EmployeeInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 16px;
        }
        .style2
        {
            height: 23px;
        }
        .style4
        {
            height: 23px;
            width: 142px;
        }
        .style5
        {
            height: 16px;
            width: 142px;
        }
        .style6
        {
            width: 117px;
        }
        .style7
        {
            height: 23px;
            width: 117px;
        }
        .style8
        {
            height: 16px;
            width: 117px;
        }
        .style9
        {
            width: 443px;
        }
        .style10
        {
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div style="text-align: center">
    
    <asp:Image ID="Image2" runat="server" ImageUrl="untitled.png" />
        <br />
        <center>
        <table class="style9">
        <tr>
            <th class="style6"></th>
            <th width="174">
        <asp:Label ID="Label1" runat="server" Text="Employee Information"></asp:Label>
            </th>
            <th class="style10">
                <br />
            </th>
        </tr>
        <tr>
        <td class="style6">
            ID:</td>
        <td width="174">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        <td class="style10">
    &nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>

        <tr>
        <td class="style6">
            First
            Name:</td>
        <td width="174">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        <td class="style10">
            <asp:Button ID="Button2" runat="server" Text="Submit" Width="61px" />
            &nbsp;<asp:Button ID="Button3" runat="server" Text="Clear" Width="61px" 
                style="height: 26px" onclick="Button3_Click1" />
            </td>
        </tr>

        <tr>
        <td class="style6">
            Last Name:</td>
        <td width="174">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        <td class="style10">
            <asp:DropDownList ID="DropDownList4" runat="server" 
                onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                <asp:ListItem Value="1">Add Employee</asp:ListItem>
                <asp:ListItem Value="2">Delete Employee</asp:ListItem>
                <asp:ListItem Value="3">Update Employee</asp:ListItem>
                <asp:ListItem Value="4">Search Employee</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>


        <tr>
        <td class="style6">
            SSN:</td>
        <td width="174">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        <td class="style10">
            &nbsp;&nbsp;&nbsp;
            </td>
        </tr>

        <tr>
        <td class="style6">
            Hire Date:</td>
        <td width="174">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        <td class="style10">
            &nbsp;</td>
        </tr>

        <tr>
        <td class="style6">
            End Date:</td>
        <td width="174">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        <td class="style10">&nbsp;</td>
        </tr>

        <tr>
        <td class="style6">
            Phone:</td>
        <td width="174">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        <td class="style10"></td>
        </tr>

        <tr>
        <td class="style6">
            Alt Phone:</td>
        <td width="174">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        <td class="style10"></td>
        </tr>

        <tr>
        <td class="style7">
            Password:</td>
        <td class="style2" width="174">
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        <td class="style4"></td>
        </tr>

        <tr>
        <td class="style8">
            <asp:Label ID="Label2" runat="server" Text="Manager"></asp:Label>
            </td>
        <td class="style1" width="174">
            <asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
        <td class="style5"></td>
        </tr>

        <tr>
        <td class="style6">
            &nbsp;</td>
        <td width="174">
            &nbsp;</td>
        <td class="style10"></td>
        </tr>
        
    </table>
    </center>
       
        <br />
       
    <asp:Button ID="Button6" runat="server" Text="&lt;&lt; Back" Width="68px" 
            Height="38px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button7" runat="server" Text="Home" Width="68px" Height="38px" 
            onclick="Button7_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button8" runat="server" Text="Logout" Width="68px" Height="38px" />
     </div>
    
    </div>
    </form>
</body>
</html>
