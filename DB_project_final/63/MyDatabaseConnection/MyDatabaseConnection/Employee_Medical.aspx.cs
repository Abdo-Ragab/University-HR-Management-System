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
    public partial class Employee_Medical : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Process(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("Submit_medical", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@employee_ID", Session["user"]);
            cmd.Parameters.AddWithValue("@start_date", TextBox1.Text);
            cmd.Parameters.AddWithValue("@end_date", TextBox2.Text);
            cmd.Parameters.AddWithValue("@type", DropDownListType.SelectedValue);
            cmd.Parameters.AddWithValue("@insurance_status", CheckBoxInsurance.Checked ? 1 : 0);
            cmd.Parameters.AddWithValue("@disability_details", TextBox3.Text);
            cmd.Parameters.AddWithValue("@document_description", TextBox4.Text);
            cmd.Parameters.AddWithValue("@file_name", TextBoxFileName.Text);

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