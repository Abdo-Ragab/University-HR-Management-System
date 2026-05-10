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
    public partial class Employee_attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Process1(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.MyAttendance(@id)", conn);

            // ALWAYS convert Session["user"] to int
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(Session["user"]);

            conn.Open();
            Grid.Visible = true;
            Grid.DataSource = cmd.ExecuteReader();
            Grid.DataBind();
            conn.Close();
        }

    }
}