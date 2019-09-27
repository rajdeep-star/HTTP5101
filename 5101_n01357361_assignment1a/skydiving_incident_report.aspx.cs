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
                    string Victim_Firstname = victim_firstname.Text.ToString();
                    string Victim_Lastname = victim_lastname.Text.ToString();
                    string Victim_Phone = victim_phone.Text.ToString();
                    string Incident_Location = incident_location.SelectedValue.ToString();
                    int Copies_Of_Report = Convert.ToInt32(number_of_copies.Text);
                    string Importance_Of_Querry = importance.Text.ToString();

                    report.InnerHtml += "You have provided the following information: <br>";
                    report.InnerHtml += " First Name: " + Victim_Firstname + "<br>";
                    report.InnerHtml += " Last Name: " + Victim_Lastname + "<br>";
                    report.InnerHtml += " Phone Number: " + Victim_Phone + "<br>";
                    report.InnerHtml += " Incident Location: " + Incident_Location + "<br>";
                    report.InnerHtml += " Number of copies of report: " + Copies_Of_Report + "<br>";

                    if (Importance_Of_Querry == "Requires urgent attention")
                    {
                        report.InnerHtml += "Your querry requires immidiate attention.";
                    }

                    if (Importance_Of_Querry == "Pending investigation.")
                    {
                        report.InnerHtml += "Investigation is still pending.";
                    }

                    if (Importance_Of_Querry == "Resolved decision")
                    {
                      report.InnerHtml += "Decision after resolving the incident is requested.";
                    }
                }
            }
        }
    }
}