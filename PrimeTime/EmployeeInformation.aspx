<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeInformation.aspx.cs" Inherits="EmployeeInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            <asp:TextBox ID="id_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style10">
    &nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>

        <tr>
        <td class="style6">
            First
            Name:</td>
        <td width="174">
            <asp:TextBox ID="name_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style10">
            <asp:Button ID="submit_btn" runat="server" Text="Submit" Width="61px" 
                onclick="submit_btn_Click" />
            &nbsp;<asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                style="height: 26px" onclick="clear_btn_Click" />
            </td>
        </tr>

        <tr>
        <td class="style6">
            Last Name:</td>
        <td width="174">
            <asp:TextBox ID="lastName_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style10">
            <asp:DropDownList ID="chooseAction_ddl" runat="server" 
                onselectedindexchanged="chooseAction_ddl_SelectedIndexChanged">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
            <asp:ListItem Value="1">Add Employee</asp:ListItem>
            <asp:ListItem Value="2">Delete Employee</asp:ListItem>
            <asp:ListItem Value="3">Update Employee</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>


        <tr>
        <td class="style6">
            SSN:</td>
        <td width="174">
            <asp:TextBox ID="ssn_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style10">
            &nbsp;&nbsp;&nbsp;
            </td>
        </tr>

        <tr>
        <td class="style6">
            Hire Date:</td>
        <td width="174">
            <asp:TextBox ID="hireDate_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style10">
            &nbsp;</td>
        </tr>

        <tr>
        <td class="style6">
            End Date:</td>
        <td width="174">
            <asp:TextBox ID="endDate_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style10">&nbsp;</td>
        </tr>

        <tr>
        <td class="style6">
            Phone:</td>
        <td width="174">
            <asp:TextBox ID="phone_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style10"></td>
        </tr>

        <tr>
        <td class="style6">
            Alt Phone:</td>
        <td width="174">
            <asp:TextBox ID="altPhone_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style10"></td>
        </tr>

        <tr>
        <td class="style7">
            Password:</td>
        <td class="style2" width="174">
            <asp:TextBox ID="password_tb" runat="server"></asp:TextBox>
            </td>
        <td class="style4"></td>
        </tr>

        <tr>
        <td class="style8">
            <asp:Label ID="manager_lbl" runat="server" Text="Manager"></asp:Label>
            </td>
        <td class="style1" width="174">
            <asp:CheckBox ID="manager_chkbx" runat="server" 
                oncheckedchanged="manager_chkbx_CheckedChanged" />
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
    <asp:Button ID="home_btn" runat="server" Text="Home" Width="68px" Height="38px" 
            onclick="home_btn_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Text="Logout" Width="68px" Height="38px" 
            onclick="logout_btn_Click" />
     </center>
     </div>
    
    </div>
    </form>
</body>
</html>
