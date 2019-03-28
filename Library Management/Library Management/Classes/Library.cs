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
                            Birthday = (DateTime)row["age"],
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