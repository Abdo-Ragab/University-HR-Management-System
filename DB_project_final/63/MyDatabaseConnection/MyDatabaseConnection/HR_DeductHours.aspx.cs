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
    public partial class HR_DeductHours : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Process(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("Deduction_hours", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@employee_ID", empid.Text);

            try
            {
                conn.Open();
                int success = cmd.ExecuteNonQuery();
                conn.Close();
                if (success == 1)
                {
                    lblResult5.Text = "Success.";
                }
                else
                {
                    lblResult5.Text = "Failed. Invalid request ID entered retry with a different ID.";
                }
                lblResult5.Visible = true;
            }
            catch
            {
                lblResult5.Visible = true;
                lblResult5.Text = "Failed. Invalid request ID entered retry with a different ID.";
            }
        }
    }
}