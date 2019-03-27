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
            routes.MapPageRoute("Error", "Error", "~/Error.aspx");
            routes.MapPageRoute("Home Default", "", "~/index.aspx");
            routes.MapPageRoute("Home", "Home", "~/index.aspx");
            routes.MapPageRoute("Member Default", "Member", "~/member.aspx");
            routes.MapPageRoute("Member", "Member/{MemberParameter}", "~/member.aspx");
            routes.MapPageRoute("Literatures Default", "Literatures", "~/Literature.aspx");
            routes.MapPageRoute("Literatures", "Literatures/{LiteraturesParameter}", "~/member.aspx");
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