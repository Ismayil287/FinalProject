using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LastDance
{
    public partial class Welcome : System.Web.UI.Page
    {
        public static bool logcheck = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(logcheck == false)
            {
                btnLogin.Text = "Login";
            }
            else
            {
                btnLogin.Text = "Logout";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(btnLogin.Text == "Login")
            {
                Response.Redirect("Login.aspx");
            }

            if(btnLogin.Text == "Logout")
            {
                logcheck = false;
                Response.Redirect("index.aspx");

            }
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            if (logcheck == true)
            {
                Response.Redirect("AdminPanel.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DataSource.DS);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into UsersFeedbacks values('" + txtFullname.Text + "','" + txtEmail.Text + "','" + txtMessage.Text + "')", conn);
            cmd.ExecuteNonQuery();
        }
    }
}