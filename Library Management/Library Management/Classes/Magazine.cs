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

        public override void Add()
        {
            Database.ProcedureName = "dbo.AddMagazine";
            SqlParameter[] spParameter = new SqlParameter[12];
            spParameter[0] = new SqlParameter("@issn", SqlDbType.NVarChar, 100);
            spParameter[0].Value = ISSNCode;

            spParameter[1] = new SqlParameter("@name", SqlDbType.NVarChar, 100);
            spParameter[1].Value = Name;

            spParameter[3] = new SqlParameter("@authorFullName", SqlDbType.NVarChar, 100);
            spParameter[3].Value = _PublishInfo.AuthorFullName;

            spParameter[2] = new SqlParameter("@publisher", SqlDbType.NVarChar, 100);
            spParameter[2].Value = _PublishInfo.Publisher;

            spParameter[3] = new SqlParameter("@publishingLocation", SqlDbType.NVarChar, 100);
            spParameter[3].Value = _PublishInfo.PublishingLocation;

            spParameter[4] = new SqlParameter("@circulation", SqlDbType.Int);
            spParameter[4].Value = _PublishInfo.Circulation;

            spParameter[5] = new SqlParameter("@publishDate", SqlDbType.NVarChar, 100);
            spParameter[5].Value = _PublishInfo.PublishDate;

            spParameter[6] = new SqlParameter("@language", SqlDbType.Int);
            spParameter[6].Value = Language;

            spParameter[7] = new SqlParameter("@pageNumber", SqlDbType.Int);
            spParameter[7].Value = PageNumber;

            Database.Queries(spParameter);
        }

    }
}