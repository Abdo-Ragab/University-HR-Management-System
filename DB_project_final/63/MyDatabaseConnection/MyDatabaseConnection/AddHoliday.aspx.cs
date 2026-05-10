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
    public partial class AddHoliday : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Holiday(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["AdminComponent1"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("Add_Holiday", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@holiday_name", Name.Text);
            cmd.Parameters.AddWithValue("@from_date", FromDate.Text);
            cmd.Parameters.AddWithValue("@to_date", ToDate.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            Msg.Text = "Holiday added.";
        }

    }
}