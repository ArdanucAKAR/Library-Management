using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management
{
    public partial class Literature1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string parameter = (RouteData.Values["LiteraturesParameter"] != null ? RouteData.Values["LiteraturesParameter"].ToString() : "");
            if (parameter.ToLower() == string.Empty)
            {
                mvLiterature.ActiveViewIndex = 0;
            }
            else if (parameter.ToLower() == "books")
            {
                mvLiterature.ActiveViewIndex = 1;
            }
            else if (parameter.ToLower() == "magazines")
            {
                mvLiterature.ActiveViewIndex = 1;
            }
        }
    }
}