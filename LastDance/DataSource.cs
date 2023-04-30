using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LastDance
{
    internal class DataSource
    {
        public static string DS
        {
            get
            {
                return "Data Source=localhost; Initial Catalog=FoodSearch; Integrated Security=true";
            }
        }
    }
}