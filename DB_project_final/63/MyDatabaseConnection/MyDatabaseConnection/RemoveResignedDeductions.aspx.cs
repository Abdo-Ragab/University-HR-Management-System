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
    public partial class RemoveResignedDeductions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ExecuteProc(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["AdminComponent1"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("Remove_Deductions", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            Msg.Text = "Deductions removed successfully.";
        }

    }
}