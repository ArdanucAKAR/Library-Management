using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class Magazine : Literature
    {
        public string ISSNCode { get; set; }

        public override bool Add()
        {
            Database.ProcedureName = "dbo.AddMagazine";
            SqlParameter[] spParameter = new SqlParameter[9];
            spParameter[0] = new SqlParameter("@issn", SqlDbType.NVarChar, 100);
            spParameter[0].Value = ISSNCode;

            spParameter[1] = new SqlParameter("@name", SqlDbType.NVarChar, 100);
            spParameter[1].Value = Name;

            spParameter[2] = new SqlParameter("@authorFullName", SqlDbType.NVarChar, 100);
            spParameter[2].Value = PublishInfo.AuthorFullName;

            spParameter[3] = new SqlParameter("@publisher", SqlDbType.NVarChar, 100);
            spParameter[3].Value = PublishInfo.Publisher;

            spParameter[4] = new SqlParameter("@publishingLocation", SqlDbType.NVarChar, 100);
            spParameter[4].Value = PublishInfo.PublishingLocation;

            spParameter[5] = new SqlParameter("@circulation", SqlDbType.Int);
            spParameter[5].Value = PublishInfo.Circulation;

            spParameter[6] = new SqlParameter("@publishDate", SqlDbType.NVarChar, 100);
            spParameter[6].Value = PublishInfo.PublishDate;

            spParameter[7] = new SqlParameter("@language", SqlDbType.Int);
            spParameter[7].Value = Language;

            spParameter[8] = new SqlParameter("@pageNumber", SqlDbType.Int);
            spParameter[8].Value = PageNumber;

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