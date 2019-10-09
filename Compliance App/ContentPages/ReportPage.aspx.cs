using Compliance_App.Reports;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Compliance_App.ContentPages
{
    public partial class ReportPage : System.Web.UI.Page
    {

        ReportDocument Report = new ReportDocument();

        protected void Page_Unload(object sender, EventArgs e)
        {
            if (Report != null)
                Report.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Report.Load(Server.MapPath("~/Reports/CrystalReport1.rpt"));

            string user = WebConfigurationManager.AppSettings["user"];
            string pass = WebConfigurationManager.AppSettings["pass"];

            Report.SetDatabaseLogon(user, pass);
            CrystalReportViewer1.ReportSource = Report;

        }

    }
}