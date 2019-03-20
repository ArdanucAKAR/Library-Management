using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management.Classes
{
    public class Database
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString);

        public string Connect(string username, string password)
        {
            try
            {
                connection.Open();
                if ((connection.State & ConnectionState.Open) > 0)
                {
                    return "Connection OK!";
                }
                else
                {
                    return "No Connection!";

                }
            }
            catch (Exception err)
            {
                return "No Connection!";
            }
        }
        public bool login(string username, string password)
        {
            return true;
        }
    }
}