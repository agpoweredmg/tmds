<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editEventInfo.aspx.cs" Inherits="editEventInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <center>
            <asp:Image ID="Image1" runat="server" ImageUrl="untitled.png" />
            <table>
                <tr>
                    <th>
                    </th>
                    <th>
                        Edit Events Information
                    </th>
                    <th>
                    </th>
                </tr>
                <tr>
                    <th>
                        Event ID:
                    </th>
                    <th>
                        <asp:TextBox ID="eventID_tb" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="The Event ID is required" ControlToValidate="eventID_tb">*</asp:RequiredFieldValidator>
                    </th>
                    <th>
                        <asp:Button ID="submit_btn" runat="server" Text="Submit" 
                            onclick="submit_btn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="clear_btn" runat="server" Text="Clear" Width="61px" 
                            OnClick="clear_btn_Click" CausesValidation="False" />
                    </th>
                </tr>
                <tr>
                    <th>
                        Event Name:
                    </th>
                    <th>
                        <asp:TextBox ID="eventName_tb" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="eventName_tb" ErrorMessage="Name has to be a Valid Name" 
                            ValidationExpression="^[a-zA-Z''-''\s]{1,40}$">*</asp:RegularExpressionValidator>
                    </th>
                    <th>
                        <asp:DropDownList ID="actionToPerform_ddl" runat="server" 
                            onselectedindexchanged="actionToPerform_ddl_SelectedIndexChanged">
                            <asp:ListItem Value="0">Choose an Action</asp:ListItem>
                            <asp:ListItem Value="1">Add Event</asp:ListItem>
                            <asp:ListItem Value="2">Delete Event</asp:ListItem>
                            <asp:ListItem Value="3">Update Event</asp:ListItem>
                        </asp:DropDownList>
                    </th>
                </tr>
                <tr>
                    <th>
                        Event Location:
                    </th>
                    <th>
                        <asp:TextBox ID="eventLocation_tb" runat="server"></asp:TextBox>
                    &nbsp;
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
                <tr>
                    <th>
                        Event Date:
                    </th>
                    <th>
                        <asp:TextBox ID="eventDate_tb" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="eventDate_RegEx" runat="server" 
            ErrorMessage="The Date Due must be in MM/DD/YYYY format" 
            ControlToValidate="eventDate_tb" ValidationExpression="[0-9]{2}/[0-9]{2}/[0-9]{4}">*</asp:RegularExpressionValidator>
                    </th>
                    <th>
                        &nbsp;
                    </th>
                </tr>
            </table>
        </center>
        <br />
        <br />
       
        <asp:Button ID="home_btn" runat="server" Text="Home" Height="38px" Width="68px" 
            onclick="home_btn_Click" CausesValidation="False" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="logout_btn" runat="server" Text="Logout" Height="38px" 
            Width="68px" onclick="logout_btn_Click" />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ForeColor="Maroon" HeaderText="You received the following errors:" />
        <br />
    </div>
    </form>
</body>
</html>
