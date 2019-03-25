using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class Reservation
    {
        public DateTime Date { get; set; }
        public void Reverse(int memberId, int literatureId, string ISCode)
        {
            Database.ProcedureName = "dbo.AddReservation";
            SqlParameter[] spParameter = new SqlParameter[3];

            spParameter[0] = new SqlParameter("@memberId", SqlDbType.Int);
            spParameter[0].Value = memberId;

            spParameter[1] = new SqlParameter("@literatureId", SqlDbType.Int);
            spParameter[1].Value = literatureId;

            spParameter[2] = new SqlParameter("@ISCode", SqlDbType.Int);
            spParameter[2].Value = ISCode;

            Database.Queries(spParameter);
        }
    }
}