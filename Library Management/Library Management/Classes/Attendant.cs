using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class Attendant
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public bool Login()
        {
            Database.ProcedureName = "dbo.CheckAttendant";

            SqlParameter[] spParameter = new SqlParameter[2];

            spParameter[0] = new SqlParameter("@username", SqlDbType.NVarChar, 100);
            spParameter[0].Value = Username;

            spParameter[1] = new SqlParameter("@password", SqlDbType.NVarChar, 100);
            spParameter[1].Value = Password;

            DataSet ds = Database.Queries(spParameter);
            if (ds.Tables[0].Rows.Count == 1)
            {
                HttpContext.Current.Session.Add("Username", Username);
                HttpContext.Current.Session.Add("Password", Password);
                HttpContext.Current.Session.Add("FullName", ds.Tables[0].Rows[0]["Name"] + " " + ds.Tables[0].Rows[0]["Surname"]);
                HttpContext.Current.Session.Add("LoggedIn", true);
                return true;
            }
            else
                return false;
        }
        public static bool isLoggedIn()
        {
            if (HttpContext.Current.Session["LoggedIn"] != null)
                return (bool)HttpContext.Current.Session["LoggedIn"];
            else
                return false;
        }
        public void Logout()
        {
            HttpContext.Current.Session.Clear();
        }
    }
}