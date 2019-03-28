using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public static class AuthenticationService
    {
        public static Attendant Login(string Username, string Password)
        {
            SqlParameter[] spParameter = new SqlParameter[2];

            Database.ProcedureName = "dbo.CheckAttendant";
            spParameter[0] = new SqlParameter("@username", SqlDbType.NVarChar, 100);
            spParameter[0].Value = Username;

            spParameter[1] = new SqlParameter("@password", SqlDbType.NVarChar, 100);
            spParameter[1].Value = Password;

            DataSet ds = Database.Queries(spParameter);
            string FullName = ds.Tables[0].Rows[0]["fullName"].ToString();

            if (ds.Tables[0].Rows.Count == 1)
            {
                HttpContext.Current.Session.Add("Username", Username);
                HttpContext.Current.Session.Add("Password", Password);
                HttpContext.Current.Session.Add("FullName", FullName);
                HttpContext.Current.Session.Add("LoggedIn", true);
                return new Attendant() { Username = Username, Password = Password, FullName = FullName };
            }
            else
                return null;
        }
        public static bool isLoggedIn()
        {
            if (HttpContext.Current.Session["LoggedIn"] != null)
                return (bool)HttpContext.Current.Session["LoggedIn"];
            else
                return false;
        }
        public static void Logout()
        {
            HttpContext.Current.Session.Clear();
        }
    }
}