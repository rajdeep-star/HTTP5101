<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skidiving Incident Report</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Skidiving Incident Report Form</h1>
            
            <h2>Enter the victim's details for whom you want to access the report.</h2>
            <label>First Name:</label>
            <asp:TextBox runat="server" ID="victim_firstname"></asp:TextBox>
            <label>Last Name:</label>
            <asp:TextBox runat="server" ID="victim_lastname"></asp:TextBox>
            <label>Phone Number:</label>
            <asp:TextBox runat="server" ID="victim_phone"></asp:TextBox>

            <h3>Gender:</h3>
            <asp:RadioButtonList runat="server" ID="gender">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList>
            
            <h3>Select the city where the incident took place:</h3>
            <label>Location:</label>
            <asp:DropDownList runat="server" ID="location">
                    <asp:ListItem Text="Brampton" Value="Brampton"></asp:ListItem>
                    <asp:ListItem Text="Toronto" Value="Toronto"></asp:ListItem>
                    <asp:ListItem Text="Etibicoke" Value="Etobicoke"></asp:ListItem>
                    <asp:ListItem Text="Missisaga" Value="Missisaga"></asp:ListItem>
             </asp:DropDownList>
            
            <h3>Have you submitted a report form before ?</h3>
            <asp:RadioButtonList runat="server" ID="general_question">
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
            </asp:RadioButtonList>

            <h3>Mark the documents you are attaching with the report form.</h3>
            <asp:CheckBoxList  runat="server" id="documents">
                   <asp:ListItem Text="Photo ID" Value="photo ID"></asp:ListItem>
                   <asp:ListItem Text="Skidiving Training Certificate" Value="Skidiving Training Certificate"></asp:ListItem>
                   <asp:ListItem Text="Skidiving Membership Form" Value="Skidiving Membership Form"></asp:ListItem>
                   <asp:ListItem Text="Health Insurance Card" Value="Health Insurance Card"></asp:ListItem>
            </asp:CheckBoxList>

            <h3>Check all that apply!</h3>
            <asp:CheckBoxList  runat="server" id="confirm_other_information">
                   <asp:ListItem Text="Report is required within a week." Value="time"></asp:ListItem>
                   <asp:ListItem Text="Report is required in both forms-- Hard copy and Soft copy" Value="form_of_report"></asp:ListItem>
                   <asp:ListItem Text="Report needs to  be submitted to higher authorities for investigation" Value="purpose_of_report"></asp:ListItem>
           </asp:CheckBoxList>
            
            <asp:Button runat="server" /> submit

    </form>
</body>
</html>
