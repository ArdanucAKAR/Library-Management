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
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            string _id = (RouteData.Values["MemberParameter"] != null ? RouteData.Values["MemberParameter"].ToString() : "");
            if (int.TryParse(_id, out id) == true)
            {
                mvMember.ActiveViewIndex = 1;
                member = new Member();
                member.ID = id;
                member.GetMemberInformation();
                if (member.PersonelInfo != null)
                {
                    List<Book> books = member.GetLoanedBooks();
                    repBook.DataSource = books;
                    repBook.DataBind();

                    List<Magazine> magazine = member.GetLoanedMagazines();
                    repMagazine.DataSource = magazine;
                    repMagazine.DataBind();
                }
                else
                    mvMember.ActiveViewIndex = 5;
            }
            else
            {
                if (_id.ToLower() == string.Empty)
                {
                    mvMember.ActiveViewIndex = 0;
                    repMember.DataSource = Library.GetMembers();
                    repMember.DataBind();
                }
                else if (_id.ToLower() == "add")
                {
                    mvMember.ActiveViewIndex = 2;
                    ddlGender.Items.Add(new ListItem("Cinsiyet Seçiniz", "0"));
                    ddlEducationLevel.Items.Add(new ListItem("Eğitim Düzeyinizi Seçiniz", "0"));
                    for (int i = 1; i <= 2; i++)
                        ddlGender.Items.Add(new ListItem(((Gender)i).ToString(), i.ToString()));
                    for (int i = 1; i <= 10; i++)
                        ddlEducationLevel.Items.Add(new ListItem(((EducationLevel)i).ToString().Replace("_", " "), i.ToString()));
                }
                else if (_id.ToLower() == "update")
                {
                    mvMember.ActiveViewIndex = 3;
                    ddlUpdateGender.Items.Add(new ListItem("Cinsiyet Seçiniz", "0"));
                    ddlUpdateEducationLevel.Items.Add(new ListItem("Eğitim Düzeyinizi Seçiniz", "0"));
                    for (int i = 1; i <= 2; i++)
                        ddlUpdateGender.Items.Add(new ListItem(((Gender)i).ToString(), i.ToString()));
                    for (int i = 1; i <= 10; i++)
                        ddlUpdateEducationLevel.Items.Add(new ListItem(((EducationLevel)i).ToString().Replace("_", " "), i.ToString()));
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
        [WebMethod]
        public static bool AddMember(string FullName, string TCNumber, string Gender, string EducationLevel, string Birthday, string Mail, string PhoneNumber, string Address)
        {
            Member member = new Member()
            {
                PersonelInfo = new PersonelInfo()
                {
                    FullName = FullName,
                    TCNumber = TCNumber,
                    Gender = (Gender)int.Parse(Gender),
                    EducationLevel = (EducationLevel)int.Parse(EducationLevel),
                    Birthday = DateTime.Parse(Birthday)
                },
                Contact = new Contact()
                {
                    Address = Address,
                    Mail = Mail,
                    PhoneNumber = PhoneNumber
                },
                MemberLibraryInfo = new MemberLibraryInfo()
                {
                    RegisterDate = DateTime.Parse(DateTime.Now.ToShortDateString()),
                    LibraryPoint = 0,
                    Status = Status.Aktif
                }
            };
            return member.Add();
        }
        [WebMethod]
        public static bool UpdateMember(string ID, string FullName, string TCNumber, string Gender, string EducationLevel, string Birthday, string Mail, string PhoneNumber, string Address)
        {
            Member member = new Member()
            {
                ID = int.Parse(ID),
                PersonelInfo = new PersonelInfo()
                {
                    FullName = FullName,
                    TCNumber = TCNumber,
                    Gender = (Gender)int.Parse(Gender),
                    EducationLevel = (EducationLevel)int.Parse(EducationLevel),
                    Birthday = DateTime.Parse(Birthday)
                },
                Contact = new Contact()
                {
                    Address = Address,
                    Mail = Mail,
                    PhoneNumber = PhoneNumber
                }
            };
            return member.Update();
        }
        [WebMethod]
        public static Member GetMember(string ID)
        {
            Member member = new Member();
            member.ID = int.Parse(ID);
            member.GetMemberInformation();
            return member;
        }
        [WebMethod]
        public static bool DeleteMember(string ID)
        {

            return true;
        }
    }
}