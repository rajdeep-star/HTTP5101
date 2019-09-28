using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _5101_n01357361_assignment1a
{
    public partial class skydiving_incident_report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //test to see that codebehind is working

            //testbox.InnerHtml = "The codebehind is working!";

            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    string Victim_Firstname = victim_firstname.Text;
                    string Victim_Lastname = victim_lastname.Text;
                    string Victim_Phone = victim_phone.Text;
                    string Incident_Location = incident_location.SelectedValue;
                    int Copies_Of_Report = Convert.ToInt32(number_of_copies.Text);
                   // string Importance_Of_Querry = importance.Text;
                    string Previous_Submission = previous_submission.Text;

                    confirm_report.InnerHtml += "You have provided the following information: <br>";
                    confirm_report.InnerHtml += " First Name: " + Victim_Firstname + "<br>";
                    confirm_report.InnerHtml += " Last Name: " + Victim_Lastname + "<br>";
                    confirm_report.InnerHtml += " Phone Number: " + Victim_Phone + "<br>";
                    //confirm_report.InnerHtml += " Incident Location: " + Incident_Location + "<br>";
                    confirm_report.InnerHtml += " Number of copies of report: " + Copies_Of_Report + "<br><br>";
                   // confirm_report.InnerHtml += "Importance of querry:";

                    if (Incident_Location == "")
                    {
                        confirm_report.InnerHtml += "You have not choosen any location!";
                    }

                    if (Incident_Location == "Brampton" || Incident_Location == "Toronto") 
                    {
                        confirm_report.InnerHtml += "Investigation is still pending.";
                    }

                    if (Incident_Location == "Etobicoke")
                    {
                        confirm_report.InnerHtml += "Incident is resolved.";
                    }

                    if (Incident_Location == "Missisaga")
                    {
                        confirm_report.InnerHtml += "Report will be provided within a week.";
                    }

                    //confirm_report.InnerHtml +=
                }
            }
        }
    }
}