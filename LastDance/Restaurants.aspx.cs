using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LastDance
{
    public partial class Restaurants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection sqlConn = new SqlConnection(DataSource.DS);
            string query = "select * from RestaurantsTable";
            SqlCommand cmd = new SqlCommand(query, sqlConn);
            sqlConn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            Datalist1.DataSource = ds;
            Datalist1.DataBind();
            sqlConn.Close();
        }
    }
}