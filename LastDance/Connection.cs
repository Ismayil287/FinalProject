using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LastDance
{
    public class Connection
    {
        public static int Insert(string Username, string Email, string Password)
        {
            SqlConnection conn = new SqlConnection(DataSource.DS);
            string sqlQuery = "declare @case int; execute CheckingData @case output, @Username, @Email, @Password; SELECT @case";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            int t = cmd.ExecuteNonQuery();
            conn.Close();
            return t;
        }
    }
}