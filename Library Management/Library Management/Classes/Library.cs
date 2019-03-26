using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class Library
    {
        public string Name { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }
        public List<Book> SearchBook(string searchText)
        {
            return Database.QueryWithSql("EXEC SearchBook '" + searchText + "'").Tables[0].AsEnumerable().Select(b => new Book {
                Name = b.Field<string>("name"),
                _PublishInfo = new PublishInfo()
                {
                    AuthorFullName = b.Field<string>("authorFullName"),
                    Publisher = b.Field<string>("publisher")
                },
                ISBNCode = b.Field<string>("isbn"),
                ID = b.Field<int>("id")
            }).ToList();            
        }
        public List<Magazine> SearchMagazine(string searchText)
        {
            return Database.QueryWithSql("EXEC SearchMagazine '" + searchText + "'").Tables[0].AsEnumerable().Select(b => new Magazine {
                Name = b.Field<string>("name"),
                _PublishInfo = new PublishInfo()
                {
                    AuthorFullName = b.Field<string>("authorFullName"),
                    Publisher = b.Field<string>("publisher")
                },
                ISSNCode = b.Field<string>("issn"),
                ID = b.Field<int>("id")
            }).ToList();       
        }
    }
}