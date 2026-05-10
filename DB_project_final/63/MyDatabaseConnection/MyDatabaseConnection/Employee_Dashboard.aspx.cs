using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDatabaseConnection
{
    public partial class Employee_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void perf1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_performance.aspx");
        }

        protected void att1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_attendance.aspx");

        }

        protected void det1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_payroll.aspx");
        }

        protected void ded1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_deduction.aspx");
        }

        protected void appan1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_annual.aspx");
        }

        protected void retrieve1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_statusleave.aspx");
        }

        protected void applyacc1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_Accidental.aspx");
        }

        protected void applymed1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_Medical.aspx");
        }

        protected void applyunpaid1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_Unpaid.aspx");
        }

        protected void applycomp1(object sender, EventArgs e)
        {
            Response.Redirect("Employee_Compensation.aspx");
        }

        protected void dvpun1(object sender, EventArgs e)
        {
            Response.Redirect("DVP_UnpaidApproval.aspx");
        }

        protected void dvpann1(object sender, EventArgs e)
        {
            Response.Redirect("DVP_AnnualApproval.aspx");
        }

        protected void deval1(object sender, EventArgs e)
        {
            Response.Redirect("Dean_Evaluation.aspx");
        }
    }
}