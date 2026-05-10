using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace MyDatabaseConnection
{
    public partial class Admin_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void viewAttendance_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT * FROM allEmployeeAttendance";
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                gridAttendance.DataSource = cmd.ExecuteReader();
                gridAttendance.DataBind();
            }
        }

        protected void viewPerformance_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT * FROM allPerformance";
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                gridPerformance.DataSource = cmd.ExecuteReader();
                gridPerformance.DataBind();
            }
        }

        protected void removeHoliday_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand("Remove_Holiday", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                conn.Open();
                cmd.ExecuteNonQuery();
                lblHolidayMessage.Text = "Records removed successfully!";
            }
        }

        protected void removeDayOff_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand("Remove_DayOff", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Employee_id", txtEmpID_DayOff.Text));

                conn.Open();
                cmd.ExecuteNonQuery();
                lblDayOffMessage.Text = "Day Off removed successfully!";
            }
        }

        protected void removeLeaves_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand("Remove_Approved_Leaves", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Employee_id", txtEmpID_Leaves.Text));

                conn.Open();
                cmd.ExecuteNonQuery();
                lblLeavesMessage.Text = "Approved leaves removed successfully!";
            }
        }

        protected void replaceEmployee_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand("Replace_employee", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@Emp1_ID", txtOldEmpID.Text));
                cmd.Parameters.Add(new SqlParameter("@Emp2_ID", txtNewEmpID.Text));
                cmd.Parameters.Add(new SqlParameter("@from_date", txtStartDate.Text));
                cmd.Parameters.Add(new SqlParameter("@to_date", txtEndDate.Text));

                conn.Open();
                cmd.ExecuteNonQuery();
                lblReplaceMessage.Text = "Employee replaced successfully!";
            }
        }

        protected void updateStatus_Click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand("Update_Employment_Status", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Employee_ID", txtEmpID_Status.Text));

                conn.Open();
                cmd.ExecuteNonQuery();
                lblStatusMessage.Text = "Status updated successfully!";
            }
        }
    }
}