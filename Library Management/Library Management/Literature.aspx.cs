using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management
{
    public partial class Literature1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string literatureType = (RouteData.Values["LiteratureType"] != null ? RouteData.Values["LiteratureType"].ToString() : "");
            if (literatureType == string.Empty)
                mvLiterature.ActiveViewIndex = 0;
            else if (literatureType.ToLower() == "book")
            {
                string literaturesTypeOperation = (RouteData.Values["LiteraturesTypeOperation"] != null ? RouteData.Values["LiteraturesTypeOperation"].ToString() : "");
                if (literaturesTypeOperation == string.Empty)
                    mvLiterature.ActiveViewIndex = 0;
                else if (literaturesTypeOperation.ToLower() == "add")
                {
                    mvBook.ActiveViewIndex = 1;
                    for (int i = 1; i <= 2; i++)
                        ddlUpdateLanguage.Items.Add(new ListItem(((Language)i).ToString(), i.ToString()));
                }
                else if (literaturesTypeOperation.ToLower() == "delete")
                {
                    mvBook.ActiveViewIndex = 2;
                }
                else if (literaturesTypeOperation.ToLower() == "update")
                {
                    mvBook.ActiveViewIndex = 3;
                    for (int i = 1; i <= 2; i++)
                        ddlUpdateLanguage.Items.Add(new ListItem(((Language)i).ToString(), i.ToString()));

                }
                else if (literaturesTypeOperation.ToLower() == "loan")
                {
                    string literaturesTypeOperationOfOperation = (RouteData.Values["LiteraturesTypeOperationOfOperation"] != null ? RouteData.Values["LiteraturesTypeOperationOfOperation"].ToString() : "");
                    if (literaturesTypeOperationOfOperation == string.Empty)
                        mvLiterature.ActiveViewIndex = 0;
                    else if (literaturesTypeOperationOfOperation.ToLower() == "add")
                    {
                        mvBook.ActiveViewIndex = 4;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "delete")
                    {
                        mvBook.ActiveViewIndex = 5;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "update")
                    {
                        mvBook.ActiveViewIndex = 6;
                    }
                }
                else if (literaturesTypeOperation.ToLower() == "reservation")
                {
                    string literaturesTypeOperationOfOperation = (RouteData.Values["LiteraturesTypeOperationOfOperation"] != null ? RouteData.Values["LiteraturesTypeOperationOfOperation"].ToString() : "");
                    if (literaturesTypeOperationOfOperation == string.Empty)
                        mvLiterature.ActiveViewIndex = 0;
                    else if (literaturesTypeOperationOfOperation.ToLower() == "add")
                    {
                        mvBook.ActiveViewIndex = 7;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "delete")
                    {
                        mvBook.ActiveViewIndex = 8;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "update")
                    {
                        mvBook.ActiveViewIndex = 9;
                    }
                }
                else if (literaturesTypeOperation.ToLower() == "order")
                {
                    string literaturesTypeOperationOfOperation = (RouteData.Values["LiteraturesTypeOperationOfOperation"] != null ? RouteData.Values["LiteraturesTypeOperationOfOperation"].ToString() : "");
                    if (literaturesTypeOperationOfOperation == string.Empty)
                        mvLiterature.ActiveViewIndex = 0;
                    else if (literaturesTypeOperationOfOperation.ToLower() == "add")
                    {
                        mvBook.ActiveViewIndex = 10;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "delete")
                    {
                        mvBook.ActiveViewIndex = 11;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "update")
                    {
                        mvBook.ActiveViewIndex = 12;
                    }
                }
            }
            else if (literatureType.ToLower() == "magazine")
            {
                string literaturesTypeOperation = (RouteData.Values["LiteraturesTypeOperation"] != null ? RouteData.Values["LiteraturesTypeOperation"].ToString() : "");
                if (literaturesTypeOperation == string.Empty)
                    mvLiterature.ActiveViewIndex = 0;
                else if (literaturesTypeOperation.ToLower() == "add")
                {
                    mvMagazine.ActiveViewIndex = 1;
                }
                else if (literaturesTypeOperation.ToLower() == "delete")
                {
                    mvMagazine.ActiveViewIndex = 2;
                }
                else if (literaturesTypeOperation.ToLower() == "update")
                {
                    mvMagazine.ActiveViewIndex = 3;
                }
                else if (literaturesTypeOperation.ToLower() == "loan")
                {
                    string literaturesTypeOperationOfOperation = (RouteData.Values["LiteraturesTypeOperationOfOperation"] != null ? RouteData.Values["LiteraturesTypeOperationOfOperation"].ToString() : "");
                    if (literaturesTypeOperationOfOperation == string.Empty)
                        mvLiterature.ActiveViewIndex = 0;
                    else if (literaturesTypeOperationOfOperation.ToLower() == "add")
                    {
                        mvMagazine.ActiveViewIndex = 4;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "delete")
                    {
                        mvMagazine.ActiveViewIndex = 5;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "update")
                    {
                        mvMagazine.ActiveViewIndex = 6;
                    }
                }
                else if (literaturesTypeOperation.ToLower() == "reservation")
                {
                    string literaturesTypeOperationOfOperation = (RouteData.Values["LiteraturesTypeOperationOfOperation"] != null ? RouteData.Values["LiteraturesTypeOperationOfOperation"].ToString() : "");
                    if (literaturesTypeOperationOfOperation == string.Empty)
                        mvLiterature.ActiveViewIndex = 0;
                    else if (literaturesTypeOperationOfOperation.ToLower() == "add")
                    {
                        mvMagazine.ActiveViewIndex = 7;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "delete")
                    {
                        mvMagazine.ActiveViewIndex = 8;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "update")
                    {
                        mvMagazine.ActiveViewIndex = 9;
                    }
                }
                else if (literaturesTypeOperation.ToLower() == "order")
                {
                    string literaturesTypeOperationOfOperation = (RouteData.Values["LiteraturesTypeOperationOfOperation"] != null ? RouteData.Values["LiteraturesTypeOperationOfOperation"].ToString() : "");
                    if (literaturesTypeOperationOfOperation == string.Empty)
                        mvLiterature.ActiveViewIndex = 0;
                    else if (literaturesTypeOperationOfOperation.ToLower() == "add")
                    {
                        mvMagazine.ActiveViewIndex = 10;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "delete")
                    {
                        mvMagazine.ActiveViewIndex = 11;
                    }
                    else if (literaturesTypeOperationOfOperation.ToLower() == "update")
                    {
                        mvMagazine.ActiveViewIndex = 12;
                    }
                }
            }
        }
        [WebMethod]
        public static bool AddBook(string ISBN, string Name, string SideName, string AuthorFullName, string TranslaterFullName, string Publisher, string PublishingLocation, string Circulation, string PublishDate, string Language, string DDCCode, string PageNumber)
        {
            Book book = new Book()
            {
                ISBNCode = ISBN,
                SideName = SideName,
                PublishInfo = new PublishInfo()
                {
                    AuthorFullName = AuthorFullName,
                    Circulation = int.Parse(Circulation),
                    Publisher = Publisher,
                    PublishDate = PublishDate,
                    PublishingLocation = PublishingLocation
                },
                DDCCode = DDCCode,
                Language = (Language)(int.Parse(Language)),
                Name = Name,
                PageNumber = int.Parse(PageNumber),
                TranslaterFullName = TranslaterFullName
            };
            return book.Add();
        }
        [WebMethod]
        public static bool UpdateBook(string ID, string ISBN, string Name, string SideName, string AuthorFullName, string TranslaterFullName, string Publisher, string PublishingLocation, string Circulation, string PublishDate, string Language, string DDCCode, string PageNumber)
        {
            Book book = new Book()
            {
                ID = int.Parse(ID),
                ISBNCode = ISBN,
                SideName = SideName,
                PublishInfo = new PublishInfo()
                {
                    AuthorFullName = AuthorFullName,
                    Circulation = int.Parse(Circulation),
                    Publisher = Publisher,
                    PublishDate = PublishDate,
                    PublishingLocation = PublishingLocation
                },
                DDCCode = DDCCode,
                Language = (Language)(int.Parse(Language)),
                Name = Name,
                PageNumber = int.Parse(PageNumber),
                TranslaterFullName = TranslaterFullName
            };
            return book.Update();
        }
        [WebMethod]
        public static Book GetBook(string ISBN)
        {
            return Library.GetBook(ISBN);
        }
        [WebMethod]
        public static bool DeleteBook(string ISBN)
        {
            Book book = new Book()
            {
                ISBNCode = ISBN
            };
            return book.Delete();
        }
    }
}