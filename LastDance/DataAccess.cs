using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace LastDance
{
    public class DataAccess
    {
        public static DataSet Data(int id1, int id2)
        {
            SqlConnection conn = new SqlConnection(DataSource.DS);
            string query = "select * from FoodsTableKFC where FoodID between @FoodID1 and @FoodID2";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@FoodID1", id1);
            cmd.Parameters.AddWithValue("@FoodID2", id2);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}