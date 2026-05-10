using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminComponent1
{
    public partial class UpdateAttendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Update_Attendance(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["AdminComponent1"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("Update_Attendance", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Employee_id", EmpID.Text);
            cmd.Parameters.AddWithValue("@check_in_time", string.IsNullOrEmpty(InTime.Text) ? (object)DBNull.Value : InTime.Text);
            cmd.Parameters.AddWithValue("@check_out_time", string.IsNullOrEmpty(OutTime.Text) ? (object)DBNull.Value : OutTime.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            Msg.Text = "Attendance updated.";
        }

    }
}