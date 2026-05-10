using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminComponent1
{
    public partial class EmployeesPerDept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoadData(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["AdminComponent1"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("SELECT * FROM NoEmployeeDept", conn);
            conn.Open();

            Grid.DataSource = cmd.ExecuteReader();
            Grid.DataBind();

            conn.Close();
        }

    }
}