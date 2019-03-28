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
        public int MemberId { get; set; }
        public int LiteratureId { get; set; }
        public string LoanDate { get; set; }
        public string ReturnDate { get; set; }

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
        public void LendBook()
        {
            Database.ProcedureName = "dbo.LendBook";
            SqlParameter[] spParameter = new SqlParameter[4];
            spParameter[0] = new SqlParameter("@memberId", SqlDbType.Int);
            spParameter[0].Value = MemberId;

            spParameter[1] = new SqlParameter("@literatureId", SqlDbType.Int);
            spParameter[1].Value = LiteratureId;

            spParameter[2] = new SqlParameter("@date", SqlDbType.DateTime);
            spParameter[2].Value = LoanDate;

            spParameter[3] = new SqlParameter("@returnDate", SqlDbType.DateTime);
            spParameter[3].Value = ReturnDate;

            Database.Queries(spParameter);
        }
        public void LendMagazine()
        {
            Database.ProcedureName = "dbo.LendMagazine";
            SqlParameter[] spParameter = new SqlParameter[4];
            spParameter[0] = new SqlParameter("@memberId", SqlDbType.Int);
            spParameter[0].Value = MemberId;

            spParameter[1] = new SqlParameter("@literatureId", SqlDbType.Int);
            spParameter[1].Value = LiteratureId;

            spParameter[2] = new SqlParameter("@date", SqlDbType.DateTime);
            spParameter[2].Value = LoanDate;

            spParameter[3] = new SqlParameter("@returnDate", SqlDbType.DateTime);
            spParameter[3].Value = ReturnDate;

            Database.Queries(spParameter);
        }
    }
}