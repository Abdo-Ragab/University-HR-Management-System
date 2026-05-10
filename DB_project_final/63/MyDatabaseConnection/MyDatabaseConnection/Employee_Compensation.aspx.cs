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
    public partial class Employee_Compensation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ProcessComp_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("Submit_compensation", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@employee_ID", Session["user"]);
            cmd.Parameters.AddWithValue("@compensation_date", TextBoxCompDate.Text);
            cmd.Parameters.AddWithValue("@reason", TextBoxReason.Text);
            cmd.Parameters.AddWithValue("@date_of_original_workday", TextBoxOriginalDate.Text);
            cmd.Parameters.AddWithValue("@replacement_emp", TextBoxReplacement.Text);

            try
            {
                conn.Open();
                int success = cmd.ExecuteNonQuery();
                conn.Close();
                if (success == 1)
                {
                    lblResult.Text = "Success.";
                }
                else
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