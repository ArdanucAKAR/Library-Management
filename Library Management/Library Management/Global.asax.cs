using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Library_Management
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        public void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("Login", "Login", "~/Login.aspx");
            routes.MapPageRoute("Anasayfa 1", "", "~/index.aspx");
            routes.MapPageRoute("Anasayfa 2", "Home", "~/index.aspx");
            //routes.MapPageRoute("Member 1", "Member/{id}", "~/index.aspx");
            //routes.MapPageRoute("Member 1", "Member/Add", "~/index.aspx");
            //routes.MapPageRoute("Member 1", "Member/{id}", "~/index.aspx");
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}