using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management
{
    public partial class Member1 : System.Web.UI.Page
    {
        public Member member;
        public Personelnfo personelnfo;
        public Contact contact;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            string _id = (RouteData.Values["MemberParameter"] != null ? RouteData.Values["MemberParameter"].ToString() : "");
            if (int.TryParse(_id, out id) == true)
            {
                mvMember.ActiveViewIndex = 1;
                member = new Member(new Personelnfo());
                member.ID = id;
                personelnfo = member.GetMemberInformation(id);
                contact = member.GetContact();

                List<Book> books = member.GetLoanedBooks();
                repBook.DataSource = books;
                repBook.DataBind();

                List<Magazine> magazine = member.GetLoanedMagazines();
                repMagazine.DataSource = magazine;
                repMagazine.DataBind();
            }
            else
            {
                if (_id.ToLower() == string.Empty)
                {
                    mvMember.ActiveViewIndex = 0;
                }
                else if (_id.ToLower() == "add")
                {
                    mvMember.ActiveViewIndex = 2;
                }
                else if (_id.ToLower() == "update")
                {
                    mvMember.ActiveViewIndex = 3;
                }
                else if (_id.ToLower() == "delete")
                {
                    mvMember.ActiveViewIndex = 4;
                }
                else
                {
                    Response.Redirect("~/Error");
                }
            }
        }
    }
}