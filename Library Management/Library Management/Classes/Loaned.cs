using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class Loaned
    {
        public DateTime LoanDate { get; set; }
        public int MemberId { get; set; }
        public int LiteratureId { get; set; }

        public bool isLoaned()
        {
            Database.ProcedureName = "dbo.CheckLoaned";
            SqlParameter[] spParameter = new SqlParameter[1];
            spParameter[0] = new SqlParameter("@id", SqlDbType.Int);
            spParameter[0].Value = LiteratureId;

            DataSet ds = Database.Queries(spParameter);
            if (ds.Tables[0].Rows.Count != 0)
                return true;
            else
                return false;
        }
        public void Lend()
        {
            Database.ProcedureName = "dbo.LendLiterature";
            SqlParameter[] spParameter = new SqlParameter[3];
            spParameter[0] = new SqlParameter("@memberId", SqlDbType.Int);
            spParameter[0].Value = MemberId;

            spParameter[1] = new SqlParameter("@literatureId", SqlDbType.Int);
            spParameter[1].Value = LiteratureId;

            spParameter[2] = new SqlParameter("@date", SqlDbType.DateTime);
            spParameter[2].Value = LoanDate;

            Database.Queries(spParameter);
        }
    }
}