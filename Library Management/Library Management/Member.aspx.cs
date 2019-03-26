using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management
{
    public partial class Member1 : System.Web.UI.Page
    {
        public Member member;
        protected void Page_Load(object sender, EventArgs e)
        {            
            member = new Member(null);
            member.GetMemberInformation(1);
        }
    }
}