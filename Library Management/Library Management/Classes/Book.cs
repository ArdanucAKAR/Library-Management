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
        public string AuthorFullName { get; set; }
        public string TranslaterFullName { get; set; }
        public string DDCCode { get; set; }
        public PublishInfo _PublishInfo { get; set; }
        public override string GetProcedureName()
        {
            return "dbo.AddBook";
        }
        public override void Add()
        {
            base.Add();
            SqlParameter[] spParameter = new SqlParameter[12];
            spParameter[0] = new SqlParameter("@isbn", SqlDbType.NVarChar, 100);
            spParameter[0].Value = ISCode;

            spParameter[1] = new SqlParameter("@name", SqlDbType.NVarChar, 100);
            spParameter[1].Value = Name;

            spParameter[2] = new SqlParameter("@sideName", SqlDbType.NVarChar, 100);
            spParameter[2].Value = SideName;

            spParameter[3] = new SqlParameter("@authorFullName", SqlDbType.NVarChar, 100);
            spParameter[3].Value = AuthorFullName;

            spParameter[4] = new SqlParameter("@translaterFullName", SqlDbType.NVarChar, 100);
            spParameter[4].Value = TranslaterFullName;

            spParameter[5] = new SqlParameter("@publisher", SqlDbType.NVarChar, 100);
            spParameter[5].Value = _PublishInfo.Publisher;

            spParameter[6] = new SqlParameter("@publishingLocation", SqlDbType.NVarChar, 100);
            spParameter[6].Value = _PublishInfo.PublishingLocation;

            spParameter[7] = new SqlParameter("@circulation", SqlDbType.Int);
            spParameter[7].Value = _PublishInfo.Circulation;

            spParameter[8] = new SqlParameter("@publishDate", SqlDbType.NVarChar, 100);
            spParameter[8].Value = _PublishInfo.PublishDate;

            spParameter[9] = new SqlParameter("@language", SqlDbType.Int);
            spParameter[9].Value = Language;

            spParameter[10] = new SqlParameter("@ddcCode", SqlDbType.NVarChar, 100);
            spParameter[10].Value = DDCCode;

            spParameter[11] = new SqlParameter("@pageNumber", SqlDbType.Int);
            spParameter[11].Value = PageNumber;

            Database.Queries(spParameter);
        }
    }
}