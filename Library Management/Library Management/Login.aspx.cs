using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library_Management.Classes;

namespace Library_Management
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Attendant.isLoggedIn())
                Response.Redirect("Home");
        }
        [WebMethod]
        public static bool CheckLogin(string username, string password)
        {
            Attendant attendant = new Attendant() { Username = username, Password = password };
            return attendant.Login();
        }
    }
}