using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LastDance
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grdBind();
                grdBindForFeedBack();
            }
        }

        protected void grdBind()
        {
            SqlConnection conn = new SqlConnection(DataSource.DS);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from Registration", conn);
            SqlDataReader DR = cmd.ExecuteReader();
            if (DR.HasRows == true)
            {
                grdCustomer.DataSource = DR;
                grdCustomer.DataBind();
            }
        }

        protected void grdBindForFeedBack()
        {
            SqlConnection conn = new SqlConnection(DataSource.DS);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from UsersFeedbacks", conn);
            SqlDataReader DR = cmd.ExecuteReader();
            if (DR.HasRows == true)
            {
                grdFeedback.DataSource = DR;
                grdFeedback.DataBind();
            }
        }

        protected void grdCustomer_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdCustomer.EditIndex = e.NewEditIndex;
            grdBind();
        }

        protected void grdCustomer_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(grdCustomer.DataKeys[e.RowIndex].Value.ToString());
            string username = ((TextBox)grdCustomer.Rows[e.RowIndex].Cells[1].Controls[0]).Text.ToString();
            string email = ((TextBox)grdCustomer.Rows[e.RowIndex].Cells[2].Controls[0]).Text.ToString();
            string password = ((TextBox)grdCustomer.Rows[e.RowIndex].Cells[3].Controls[0]).Text.ToString();

            SqlConnection conn = new SqlConnection(DataSource.DS);
            conn.Open();
            int t = CRUD.Update(id, username, email, password);
            if (t > 0)
            {
                grdCustomer.EditIndex = -1;
                grdBind();
            }
        }

        protected void grdCustomer_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(grdCustomer.DataKeys[e.RowIndex].Value.ToString());
            SqlConnection conn = new SqlConnection(DataSource.DS);
            conn.Open();
            int t = CRUD.Delete(id);
            if (t > 0)
            {
                grdCustomer.EditIndex = -1;
                grdBind();
            }
        }

        protected void grdCustomer_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdCustomer.EditIndex = -1;
            grdBind();
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnRestaurant_Click(object sender, EventArgs e)
        {
            Response.Redirect("Restaurants.aspx");
        }
    }
}