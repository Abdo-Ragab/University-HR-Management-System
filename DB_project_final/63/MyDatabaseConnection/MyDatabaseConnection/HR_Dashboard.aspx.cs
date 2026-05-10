using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDatabaseConnection
{
    public partial class HR_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }
        }

        protected void Approve(object sender, EventArgs e)
        {
            Response.Redirect("HR_ApproveAnnualAccidental.aspx");
        }

        protected void Unpaid(object sender, EventArgs e)
        {
            Response.Redirect("HR_ApproveUnpaid.aspx");
        }

        protected void comp(object sender, EventArgs e)
        {
            Response.Redirect("HR_ApproveCompensation.aspx");
        }

        protected void ded(object sender, EventArgs e)
        {
            Response.Redirect("HR_DeductHours.aspx");
        }

        protected void dedday(object sender, EventArgs e)
        {
            Response.Redirect("HR_DeductDays.aspx");
        }

        protected void dedunpaid(object sender, EventArgs e)
        {
            Response.Redirect("HR_Deductunpaid.aspx");
        }

        protected void Generate(object sender, EventArgs e)
        {
            Response.Redirect("HR_Generate.aspx");
        }
    }
}