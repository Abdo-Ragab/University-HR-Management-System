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
    public partial class HR_DeductDays : System.Web.UI.Page
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

            cmd.Parameters.AddWithValue("@employee_ID", empid1.Text);

            try
            {
                conn.Open();
                int success = cmd.ExecuteNonQuery();
                conn.Close();
                if (success == 1)
                {
                    lblResult4.Text = "Success.";
                }
                else
                {
                    lblResult4.Text = "Failed. Invalid request ID entered retry with a different ID.";
                }
                lblResult4.Visible = true;
            }
            catch
            {
                lblResult4.Visible = true;
                lblResult4.Text = "Failed. Invalid request ID entered retry with a different ID.";
            }

            
        }
    }
}