using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDatabaseConnection
{
    public partial class HR_ApproveUnpaid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Process(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("HR_approval_an_acc", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@request_ID", RequestID1.Text);
            cmd.Parameters.AddWithValue("@HR_ID", Session["user"]);

            try
            {
                conn.Open();
                int success = cmd.ExecuteNonQuery();
                conn.Close();
                if (success == 1)
                {
                    lblResult3.Text = "Success.";
                }
                else
                {
                    lblResult3.Text = "Failed. Invalid request ID entered retry with a different ID.";
                }
                lblResult3.Visible = true;
            }
            catch
            {
                lblResult3.Visible = true;
                lblResult3.Text = "Failed. Invalid request ID entered retry with a different ID.";
            }

        }
    }
}