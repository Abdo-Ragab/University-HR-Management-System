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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login(object sender, EventArgs e)
        {
                string connStr = WebConfigurationManager.ConnectionStrings["MyDatabaseConnection"].ConnectionString;
            int id = int.Parse(username.Text);
            string pass = password.Text;

            using (var conn = new SqlConnection(connStr))
            {
                conn.Open();

                using (var cmd = new SqlCommand("SELECT dbo.HRLoginValidation(@id, @password)", conn))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.Int) { Value = id });
                    cmd.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar, 50) { Value = pass });

                    var result = cmd.ExecuteScalar();
                    bool hrSuccess = (result != null) && Convert.ToBoolean(result);

                    if (hrSuccess)
                    {
                        Session["user"] = id;
                        Response.Redirect("HR_Dashboard.aspx");
                        return;
                    }
                }

                using (var cmd = new SqlCommand("SELECT dbo.EmployeeLoginValidation(@id, @password)", conn))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add(new SqlParameter("@id", SqlDbType.Int) { Value = id });
                    cmd.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar, 50) { Value = pass });

                    var result = cmd.ExecuteScalar();
                    bool empSuccess = (result != null) && Convert.ToBoolean(result);

                    if (empSuccess)
                    {
                        Session["user"] = id;
                        Response.Redirect(id == 1 ? "AdminHome.aspx" : "Employee_Dashboard.aspx");
                    }
                    else
                    {
                        Response.Write("Invalid username or password");
                    }
                }
            }
        }
    }
}