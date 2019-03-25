using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Üye Ekleme
            //Personelnfo personelnfo = new Personelnfo()
            //{
            //    FullName = "v",
            //    Age = 21,
            //    Gender = (int)Gender.Erkek,
            //    EducationLevel = (int)EducationLevel.YüksekLisans,
            //    Adress = "a"
            //};
            //Member member = new Member(personelnfo)
            //{
            //    TCNumber = "495",
            //    RegisterDate = DateTime.Now,
            //    LibraryPoint = 0,
            //    status = 1
            //};
            //Contact contact = new Contact()
            //{
            //    Mail = "khrmnvol",
            //    PhoneNumber = "555555"
            //};
            //member.AssociateWithContact(contact);
            //member.Add();

            //Kitap Ekleme
            //Book book = new Book()
            //{
            //    ISCode = "a",
            //    Name = "a",
            //    SideName = "a",
            //    AuthorFullName = "a",
            //    TranslaterFullName = "a",
            //    _PublishInfo = new PublishInfo()
            //    {
            //        Publisher = "a",
            //        PublishingLocation = "a",
            //        Circulation = 0,
            //        PublishDate = "a"
            //    },
            //    Language = (int)Language.Türkçe,
            //    DDCCode = "asd",
            //    PageNumber = 10
            //};
            //book.Add();

            //Kitap Arama
            //Library a = new Library();
            //a.SearchBook("a");

            //Ödünç Test
            //Loaned loaned = new Loaned();
            //loaned.LiteratureId = 1;
            //Response.Write(loaned.isLoaned());

            //Rezervasyon Test
            Reservation reservation = new Reservation();
            reservation.Reverse(1, 1, "1");
        }
    }
}