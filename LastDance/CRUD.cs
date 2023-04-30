using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LastDance
{
    public class CRUD
    {
        public static int Update(int id, string username, string email, string password)
        {
            SqlConnection conn = new SqlConnection(DataSource.DS);
            conn.Open();
            SqlCommand cmd = new SqlCommand("update Registration set Username='" + username + "',Email='" + email + "',Password='" + password + "' where ID='" + id + "'", conn);
            int t = cmd.ExecuteNonQuery();
            conn.Close();
            return t;
        }
        public static int Delete(int id)
        {
            SqlConnection conn = new SqlConnection(DataSource.DS);
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from Registration where ID='" + id + "'", conn);
            int t = cmd.ExecuteNonQuery();
            conn.Close();
            return t;
        }

    }
}