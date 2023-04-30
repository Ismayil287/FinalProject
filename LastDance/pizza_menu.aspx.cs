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
    public partial class pizza_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.DataSource = DataAccess.Data(1, 6);
            DataList1.DataBind();
            DataList2.DataSource = DataAccess.Data(7, 12);
            DataList2.DataBind();
            DataList3.DataSource = DataAccess.Data(13, 18);
            DataList3.DataBind();
        }
    }
}