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
    public partial class DVP_UnpaidApproval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Approve_Unpaid(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("Upperboard_approve_unpaids", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@request_ID", TextBoxRequestID.Text);
            cmd.Parameters.AddWithValue("@Upperboard_ID", Session["user"]);

            try
            {
                conn.Open();
                int success = cmd.ExecuteNonQuery();
                conn.Close();
                if (success == 1)
                {
                    lblResult.Text = "Success.";
                } else
                {
                    lblResult.Text = "Failed.";
                }
                lblResult.Visible = true;
            }
            catch
            {
                lblResult.Visible = true;
                lblResult.Text = "Failed.";
            }
        }   
    }
}