<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SpecialServicesInformation.aspx.cs" Inherits="ServicesInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .style1
        {
            width: 225px;
        }
        .style2
        {
            height: 45px;
        }
        .style3
        {
            width: 187px;
            height: 45px;
        }
    </style>
 </head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    <center>
    <asp:Image ID="Image2" runat="server" ImageUrl="untitled.png" />
        <br />
        <table>
        <tr>
            <th>
            </th>
            <th class="style1">
                Special
            Services Information
            </th>
            <th>   
            </th>
        </tr>

        <tr>
        <td>
            Service ID:
        </td>
        <td class="style1">
            <asp:TextBox ID="ServiceID_tb" runat="server"></asp:TextBox>

            <asp:Label ID="ServiceID_lbl" runat="server" Text="Label" Visible="False"></asp:Label>

        </td>
        <td>
            <asp:Button ID="Submit_btn" runat="server" Text="Submit" 
                onclick="Submit_btn_Click" />
            <asp:Button ID="Clear_btn" runat="server" Text="Clear" 
                onclick="Clear_btn_Click" CausesValidation="False" />
        </td>
        </tr>

        <tr>
        <td>
        Service Name:
        </td>
        <td class="style1">
            <asp:TextBox ID="ServiceName_tb" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="ServiceName_RegEx" runat="server" 
                ControlToValidate="ServiceName_tb" 
                ErrorMessage="Service Name must be between 1-40 characters." ForeColor="Maroon" 
                ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">*</asp:RegularExpressionValidator>
            <asp:Label ID="ServiceName_lbl" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ChooseSpecialServices_ddl" runat="server" 
                AutoPostBack="True" 
                onselectedindexchanged="ChooseSpecialServices_ddl_SelectedIndexChanged">
                <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                <asp:ListItem Value="1">Add Special Service</asp:ListItem>
                <asp:ListItem Value="2">Delete Special Service</asp:ListItem>
                <asp:ListItem Value="3">Update Special Service</asp:ListItem>
            </asp:DropDownList>
         </td>
         </tr>

        <tr>
        <td class="style2">
            Service Price:
        </td>
        <td class="style3">
            <asp:TextBox ID="ServicePrice_tb" runat="server"></asp:TextBox>
<<<<<<< HEAD


            <asp:RangeValidator ID="ServicePrice2_rv" runat="server" 
                ControlToValidate="ServicePrice_tb" 
                ErrorMessage="Service Price must be between zero and 100,000." 
                ForeColor="Maroon" MaximumValue="50000" MinimumValue="0">*</asp:RangeValidator>

=======

&nbsp;<asp:RangeValidator ID="ServicePrice2_rv" runat="server" 
                ControlToValidate="ServicePrice_tb" 
                ErrorMessage="Service Price must be between zero and 50,000." 
                ForeColor="Maroon" MaximumValue="50000" MinimumValue="0">*</asp:RangeValidator>

>>>>>>> 1f58e9ffd3be0e8a1537373e14645b225dd2557d
        </td>
        <td class="style2">
            <asp:DropDownList ID="SelectServiceID_ddl" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="Service_Name" 
                DataValueField="Service_ID" 
                onselectedindexchanged="SelectServiceID_ddl_SelectedIndexChanged" 
                Visible="False">
                <asp:ListItem>Choose Service ID:</asp:ListItem>
            </asp:DropDownList>
        </td>
        </tr>
        
    </table>       
    <asp:Button ID="home_btn" runat="server" Text="Home" Width="68px" Height="38px" 
            onclick="home_btn_Click" CausesValidation="False" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="logout_btn" runat="server" Text="Logout" Width="68px" 
            Height="38px" onclick="logout_btn_Click" CausesValidation="False" />
        <asp:ValidationSummary ID="ServicesInformation_vs" runat="server" 
            ForeColor="Maroon" HeaderText="You recieved the following Errors:" />
        <br />
      </center>
     </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
        SelectCommand="SELECT * FROM [Special_Services]"></asp:SqlDataSource>
    </form>
</body>
</html>
