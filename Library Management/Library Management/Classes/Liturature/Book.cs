using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class Book : Literature
    {
        public string SideName { get; set; }
        public string TranslaterFullName { get; set; }
        public string DDCCode { get; set; }
        public string ISBNCode { get; set; }

        public override bool Add()
        {
            Database.ProcedureName = "dbo.AddBook";
            SqlParameter[] spParameter = new SqlParameter[12];
            spParameter[0] = new SqlParameter("@isbn", SqlDbType.NVarChar, 100);
            spParameter[0].Value = ISBNCode;

            spParameter[1] = new SqlParameter("@name", SqlDbType.NVarChar, 100);
            spParameter[1].Value = Name;

            spParameter[2] = new SqlParameter("@sideName", SqlDbType.NVarChar, 100);
            spParameter[2].Value = SideName;

            spParameter[3] = new SqlParameter("@authorFullName", SqlDbType.NVarChar, 100);
            spParameter[3].Value = PublishInfo.AuthorFullName;

            spParameter[4] = new SqlParameter("@translaterFullName", SqlDbType.NVarChar, 100);
            spParameter[4].Value = TranslaterFullName;

            spParameter[5] = new SqlParameter("@publisher", SqlDbType.NVarChar, 100);
            spParameter[5].Value = PublishInfo.Publisher;

            spParameter[6] = new SqlParameter("@publishingLocation", SqlDbType.NVarChar, 100);
            spParameter[6].Value = PublishInfo.PublishingLocation;

            spParameter[7] = new SqlParameter("@circulation", SqlDbType.Int);
            spParameter[7].Value = PublishInfo.Circulation;

            spParameter[8] = new SqlParameter("@publishDate", SqlDbType.NVarChar, 100);
            spParameter[8].Value = PublishInfo.PublishDate;

            spParameter[9] = new SqlParameter("@language", SqlDbType.Int);
            spParameter[9].Value = Language;

            spParameter[10] = new SqlParameter("@ddcCode", SqlDbType.NVarChar, 100);
            spParameter[10].Value = DDCCode;

            spParameter[11] = new SqlParameter("@pageNumber", SqlDbType.Int);
            spParameter[11].Value = PageNumber;

            try
            {
                Database.Queries(spParameter);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}