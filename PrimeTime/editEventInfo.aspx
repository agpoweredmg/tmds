<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editEventInfo.aspx.cs" Inherits="editEventInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 209px;
        }
    </style>
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
                    <th class="style1">
                        Events Information Details
                    </th>
                    <th>
                    </th>
                </tr>
                <tr>
                    <th>
                        Event ID:
                    </th>
                    <th class="style1">
                        <asp:TextBox ID="eventID_tb" runat="server"></asp:TextBox>
                        <asp:Label ID="EventID_lbl" runat="server" Text="Event ID" Visible="False"></asp:Label>
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
                    <th class="style1">
                        &nbsp;&nbsp;
                        <asp:TextBox ID="eventName_tb" runat="server"></asp:TextBox>
                        <asp:Label ID="EventName_lbl" runat="server" Text="Event Name" Visible="False"></asp:Label>
                        <asp:RegularExpressionValidator ID="EventName_vb" runat="server" 
                            ControlToValidate="eventName_tb" ErrorMessage="Event Name needs to be between 1-50 characters long." 
                            ForeColor="Maroon" ValidationExpression="^[a-zA-Z''-'\s]{1,50}$">*</asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="eventName_tb" ErrorMessage="Name has to be a Valid Name" 
                            ValidationExpression="^[a-zA-Z''-''\s]{1,40}$" ForeColor="Maroon">*</asp:RegularExpressionValidator>
                    </th>
                    <th>
                        <asp:DropDownList ID="actionToPerform_ddl" runat="server" 
                            onselectedindexchanged="actionToPerform_ddl_SelectedIndexChanged" 
                            AutoPostBack="True">
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
                    <th class="style1">
                        <asp:TextBox ID="eventLocation_tb" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                    </th>
                    <th>
                        &nbsp;
                        <asp:DropDownList ID="EventID_ddl" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="Event_Name" 
                            DataValueField="Event_ID" 
                            onselectedindexchanged="EventName_ddl_SelectedIndexChanged" Visible="False">
                            <asp:ListItem Value="0">Choose the event:</asp:ListItem>
                        </asp:DropDownList>
                    </th>
                </tr>
                <tr>
                    <th>
                        Event Date:
                    </th>
                    <th class="style1">
                        <asp:TextBox ID="eventDate_tb" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="eventDate_RegEx" runat="server" 
            ErrorMessage="The Date Due must be in MM/DD/YYYY format" 
            ControlToValidate="eventDate_tb" ValidationExpression="[0-9]{2}/[0-9]{2}/[0-9]{4}" 
                            ForeColor="Maroon">*</asp:RegularExpressionValidator>
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
            Width="68px" onclick="logout_btn_Click" CausesValidation="False" />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ForeColor="Maroon" HeaderText="You received the following Errors:" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:group3_6_WEBUSER %>" 
            SelectCommand="SELECT * FROM [Events]"></asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
