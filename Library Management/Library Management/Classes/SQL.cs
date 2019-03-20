using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management.Classes
{
    public class SQL
    {
        //        try
        //{
        //    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString);
        //    connection.Open();
        //    if ((connection.State & ConnectionState.Open) > 0)
        //    {
        //        Response.Write("Connection OK!");
        //        connection.Close();
        //    }
        //    else
        //    {
        //        Response.Write("No Connection!");
        //    }
        //}
        //catch (Exception err)
        //{
        //    Response.Write(err.ToString());
        //}

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString);

        public void Login(string username, string password)
        {

        }
    }
}