﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Drawing;

namespace LastDance
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(DataSource.DS);
        SqlCommand cmd;
        DataTable DT = new DataTable();

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            
            conn.Open();
            string sqlQuery ="declare @case int; execute CheckingData @case output, @Username, @Email, @Password; SELECT @case";

            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            cmd.Parameters.AddWithValue("Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("Password", txtPassword.Text);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            int x = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            if (x != 1)
            {
                conn.Close();
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblShow.Text = "This username already exist";
                lblShow.ForeColor = Color.Red;
            }

            
        }

    }
}