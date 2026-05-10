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
    public partial class Dean_Evaluation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEmployees();
            }
        }

        private void LoadEmployees()
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmdDept = new SqlCommand(
                "SELECT dept_name FROM Employee WHERE employee_ID = @id", conn);
            cmdDept.Parameters.AddWithValue("@id", Session["user"]);

            conn.Open();
            string dept = cmdDept.ExecuteScalar().ToString();
            conn.Close();

            SqlCommand cmd = new SqlCommand(
                "SELECT employee_ID, first_name + ' ' + last_name AS fullName FROM Employee WHERE dept_name = @dept", conn);
            cmd.Parameters.AddWithValue("@dept", dept);

            conn.Open();
            DropDownEmployees.DataSource = cmd.ExecuteReader();
            DropDownEmployees.DataTextField = "fullName";
            DropDownEmployees.DataValueField = "employee_ID";
            DropDownEmployees.DataBind();
            conn.Close();
        }

        protected void BtnEvaluate_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("Dean_andHR_Evaluation", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@employee_ID", DropDownEmployees.SelectedValue);
            cmd.Parameters.AddWithValue("@rating", DropDownRating.SelectedValue);
            cmd.Parameters.AddWithValue("@comment", TextBoxComment.Text);
            cmd.Parameters.AddWithValue("@semester", TextBoxSemester.Text);

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