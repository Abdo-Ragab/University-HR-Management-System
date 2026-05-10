using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDatabaseConnection
{
    public partial class HR_ApproveAnnualAccidental : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Process(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("HR_approval_an_acc", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@request_ID", RequestID.Text);
            cmd.Parameters.AddWithValue("@HR_ID", Session["user"]);
            try
            {
                conn.Open();
                int success = cmd.ExecuteNonQuery();
                conn.Close();
                if (success == 1)
                {
                    lblResult1.Text = "Success.";
                }
                else
                {
                    lblResult1.Text = "Failed. Invalid request ID entered retry with a different ID.";
                }
                lblResult1.Visible = true;
            }
            catch
            {
                lblResult1.Visible = true;
                lblResult1.Text = "Failed. Invalid request ID entered retry with a different ID.";
            }

        }
    }
}