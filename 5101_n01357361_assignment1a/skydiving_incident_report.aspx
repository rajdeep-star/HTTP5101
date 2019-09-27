<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="skydiving_incident_report.aspx.cs" Inherits="_5101_n01357361_assignment1a.skydiving_incident_report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skidiving Incident Report</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Skidiving Incident Report Form</h1> <!-- mytopic -->
            
            <h2>Enter the victim's details for whom you want to access the report.</h2>
            <label>First Name:</label>
            <asp:TextBox runat="server" ID="victim_firstname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter victim's first name" ControlToValidate="victim_firstname"></asp:RequiredFieldValidator> 
            
            <label>Last Name:</label>
            <asp:TextBox runat="server" ID="victim_lastname"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter victim's last name" ControlToValidate="victim_lastname"></asp:RequiredFieldValidator> 
            
            <label>Phone Number:</label>
            <asp:TextBox runat="server" ID="victim_phone"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="victim_phone" ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}" ErrorMessage="Invalid phone number!"></asp:RegularExpressionValidator> <!-- using validation expression for phone number from reference file  -->
            
            <!-- <h3>Gender:</h3> 
            <asp:RadioButtonList runat="server" ID="victim_gender">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList> -->
            
            <h3>Select the city where the incident took place:</h3>
            <label>Location:</label>
            <asp:DropDownList runat="server" ID="incident_location">
                    <asp:ListItem Text="--Select--" Value="select"></asp:ListItem>
                    <asp:ListItem Text="Brampton" Value="Brampton"></asp:ListItem>
                    <asp:ListItem Text="Toronto" Value="Toronto"></asp:ListItem>
                    <asp:ListItem Text="Etibicoke" Value="Etobicoke"></asp:ListItem>
                    <asp:ListItem Text="Missisaga" Value="Missisaga"></asp:ListItem>
             </asp:DropDownList>
             <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Choose incident location!" ControlToValidate="incident_location"></asp:RequiredFieldValidator> 
            
            <h3>How many copies do you need?</h3>
            <asp:TextBox runat="server" ID="number_of_copies"></asp:TextBox>
            <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="number_of_copies" ErrorMessage="You can ask for maximum 2 copies at one time" MinimumValue="1" MaximumValue="2" ></asp:RangeValidator>
        
            <h3>Which one of the following is of utmost importance regarding this report querry?</h3>
                <asp:RadioButtonList runat="server" ID="importance">
                    <asp:ListItem Text="Requires urgent attention" Value="urgent_attention"></asp:ListItem>
                    <asp:ListItem Text="Pending investigation" Value="pending_invest"></asp:ListItem>
                    <asp:ListItem Text="Resolved decision" Value="resolve_decision"></asp:ListItem>
            </asp:RadioButtonList> 
            <asp:RequiredFieldValidator runat="server" EnableClientScript="false" ErrorMessage="confirm the importance of querry" ControlToValidate="importance"></asp:RequiredFieldValidator>
            
            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true" />
            </section>
        
            <section id="report" runat="server">
            </section>
            

        <!-- <h3>Have you submitted a report form before ?</h3> 
            <asp:RadioButtonList runat="server" ID="previous_submission">
                    <asp:ListItem Text="Yes" Value="report_submitted_previously"></asp:ListItem>
                    <asp:ListItem Text="No" Value="report_unsubmeiited_previously"></asp:ListItem>
            </asp:RadioButtonList> 
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please Provide information about any previous report submission"  ControlToValidate="previous_submission"></asp:RequiredFieldValidator>

            <h3></h3> -->

           <!-- <h3>Mark the documents you are attaching with the report form.</h3>
            <asp:CheckBoxList  runat="server" id="documents">
                   <asp:ListItem Text="Photo ID" Value="photo ID"></asp:ListItem>
                   <asp:ListItem Text="Skidiving Training Certificate" Value="Skidiving Training Certificate"></asp:ListItem>
                   <asp:ListItem Text="Skidiving Membership Form" Value="Skidiving Membership Form"></asp:ListItem>
                   <asp:ListItem Text="Health Insurance Card" Value="Health Insurance Card"></asp:ListItem>
            </asp:CheckBoxList> -->

           <!-- <h3></h3>
            <asp:CheckBoxList  runat="server" id="confirm_other_information">
                   <asp:ListItem Text="Report is required within a week." Value="time"></asp:ListItem>
                   <asp:ListItem Text="Report is required in both forms-- Hard copy and Soft copy" Value="form_of_report"></asp:ListItem>
                   <asp:ListItem Text="Report needs to  be submitted to higher authorities for investigation" Value="purpose_of_report"></asp:ListItem>
           </asp:CheckBoxList> -->

                      
              <!-- <div runat="server" id="testbox"></div> --> 
            
            <asp:Button runat="server" text="submit"/> 
     </form>
</body>
</html>
