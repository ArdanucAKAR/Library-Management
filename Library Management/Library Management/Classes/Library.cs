using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class Library
    {
        public string Name { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }
        public static List<Member> GetMembers()
        {
            Database.ProcedureName = "dbo.GetAllMembers";

            DataSet ds = Database.Queries(null);
            List<Member> members = new List<Member>();
            if (ds.Tables[0].Rows.Count != 0)
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    members.Add(new Member
                    {
                        ID = int.Parse(row["id"].ToString()),
                        PersonelInfo = new PersonelInfo()
                        {
                            TCNumber = row["tcNumber"].ToString(),
                            FullName = row["fullName"].ToString(),
                            Birthday = (DateTime)row["birthday"],
                            EducationLevel = (EducationLevel)int.Parse(row["educationLevel"].ToString()),
                            Gender = (Gender)int.Parse(row["gender"].ToString())
                        },
                        MemberLibraryInfo = new MemberLibraryInfo()
                        {
                            LibraryPoint = int.Parse(row["libraryPoint"].ToString()),
                            RegisterDate = (DateTime)row["registerDate"],
                            Status = (Status)int.Parse(row["status"].ToString())
                        },
                        Contact = new Contact()
                        {
                            Address = row["address"].ToString(),
                            Mail = row["mail"].ToString(),
                            PhoneNumber = row["phoneNumber"].ToString()
                        }
                    });
                }

            return members;
        }
        public static Book GetBook(string isbn)
        {
            Database.ProcedureName = "dbo.GetBook";
            SqlParameter[] spParameter = new SqlParameter[1];
            spParameter[0] = new SqlParameter("@isbn", SqlDbType.NVarChar, 100);
            spParameter[0].Value = isbn;
            Book book;
            DataSet ds = Database.Queries(spParameter);

            if (ds.Tables[0].Rows.Count != 0)
            {
                book = new Book()
                {
                    ID = int.Parse(ds.Tables[0].Rows[0]["id"].ToString()),
                    ISBNCode = ds.Tables[0].Rows[0]["isbn"].ToString(),
                    Name = ds.Tables[0].Rows[0]["name"].ToString(),
                    SideName = ds.Tables[0].Rows[0]["sideName"].ToString(),
                    PublishInfo = new PublishInfo()
                    {
                        AuthorFullName = ds.Tables[0].Rows[0]["authorFullName"].ToString(),
                        Publisher = ds.Tables[0].Rows[0]["publisher"].ToString(),
                        PublishingLocation = ds.Tables[0].Rows[0]["publishingLocation"].ToString(),
                        Circulation = (int)ds.Tables[0].Rows[0]["circulation"],
                        PublishDate = ds.Tables[0].Rows[0]["publishDate"].ToString()
                    },
                    TranslaterFullName = ds.Tables[0].Rows[0]["translaterFullName"].ToString(),
                    Language = (Language)(int.Parse(ds.Tables[0].Rows[0]["language"].ToString())),
                    DDCCode = ds.Tables[0].Rows[0]["ddcCode"].ToString(),
                    PageNumber = (int)ds.Tables[0].Rows[0]["pageNumber"]
                };
                return book;
            }
            else
                return null;
        }
        public static List<Book> GetBooks()
        {
            Database.ProcedureName = "dbo.GetAllBooks";

            DataSet ds = Database.Queries(null);
            List<Book> books = new List<Book>();
            if (ds.Tables[0].Rows.Count != 0)
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    books.Add(new Book
                    {
                        ID = int.Parse(row["id"].ToString()),
                        ISBNCode = row["isbn"].ToString(),
                        Name = row["name"].ToString(),
                        SideName = row["sideName"].ToString(),
                        PublishInfo = new PublishInfo()
                        {
                            AuthorFullName = row["authorFullName"].ToString(),
                            Publisher = row["publisher"].ToString(),
                            PublishingLocation = row["publishingLocation"].ToString(),
                            Circulation = (int)row["circulation"],
                            PublishDate = row["publishDate"].ToString()
                        },
                        TranslaterFullName = row["translaterFullName"].ToString(),
                        Language = (Language)(int.Parse(row["language"].ToString())),
                        DDCCode = row["ddcCode"].ToString(),
                        PageNumber = (int)row["pageNumber"]
                    });
                }

            return books;
        }
        public static List<Magazine> GetMagazines()
        {
            Database.ProcedureName = "dbo.GetAllMagazines";

            DataSet ds = Database.Queries(null);
            List<Magazine> magazines = new List<Magazine>();
            if (ds.Tables[0].Rows.Count != 0)
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    magazines.Add(new Magazine
                    {
                        ID = int.Parse(row["id"].ToString()),
                        ISSNCode = row["isbn"].ToString(),
                        Name = row["name"].ToString(),
                        PublishInfo = new PublishInfo()
                        {
                            AuthorFullName = row["authorFullName"].ToString(),
                            Publisher = row["publisher"].ToString(),
                            PublishingLocation = row["publishingLocation"].ToString(),
                            Circulation = (int)row["circulation"],
                            PublishDate = row["publishDate"].ToString()
                        },
                        Language = (Language)(int.Parse(row["language"].ToString())),
                        PageNumber = (int)row["pageNumber"]
                    });
                }

            return magazines;
        }
        //public List<Book> SearchBook(string searchText)
        //{
        //    return Database.QueryWithSql("EXEC SearchBook '" + searchText + "'").Tables[0].AsEnumerable().Select(b => new Book
        //    {
        //        Name = b.Field<string>("name"),
        //        _PublishInfo = new PublishInfo()
        //        {
        //            AuthorFullName = b.Field<string>("authorFullName"),
        //            Publisher = b.Field<string>("publisher")
        //        },
        //        ISBNCode = b.Field<string>("isbn"),
        //        ID = b.Field<int>("id")
        //    }).ToList();
        //}
        //public List<Magazine> SearchMagazine(string searchText)
        //{
        //    return Database.QueryWithSql("EXEC SearchMagazine '" + searchText + "'").Tables[0].AsEnumerable().Select(b => new Magazine
        //    {
        //        Name = b.Field<string>("name"),
        //        _PublishInfo = new PublishInfo()
        //        {
        //            AuthorFullName = b.Field<string>("authorFullName"),
        //            Publisher = b.Field<string>("publisher")
        //        },
        //        ISSNCode = b.Field<string>("issn"),
        //        ID = b.Field<int>("id")
        //    }).ToList();
        //}
    }
}