using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LastDance
{
    
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUsername.Text == "" || txtPassword.Text == "")
            {
                lblShow.Text = "Please fill all fields";
            }
            else
            {
                SqlConnection conn = new SqlConnection(DataSource.DS);
                conn.Open();
                string SqlQuery = "Select COUNT(1) from Registration where Username=@username and Password=@password";
                SqlCommand cmd = new SqlCommand(SqlQuery, conn);
                cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count == 1)
                {
                    Session["username"] = txtUsername.Text;
                    Welcome.logcheck = true;
                    Response.Redirect("index.aspx");
                }
                else
                {
                    lblShow.Text = "Username or Password is uncorrect!";
                    lblShow.ForeColor = Color.Red;
                }
            }
        }
    }
}