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
            member = new Member(new Personelnfo());
            member.ID = int.Parse(RouteData.Values["id"].ToString());
            personelnfo = member.GetMemberInformation(1);
            contact = member.GetContact();

            List<Book> books = member.GetLoanedBooks();
            repBook.DataSource = books;
            repBook.DataBind();

            List<Magazine> magazine = member.GetLoanedMagazines();
            repMagazine.DataSource = magazine;
            repMagazine.DataBind();
        }
    }
}