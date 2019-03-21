using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Microsoft.ApplicationBlocks.Data;

namespace Library_Management.Classes
{
    public class Database
    {
        public string sqlConn = ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString;
        public string ProcedureName { get; set; }
        public DataSet Queries(SqlParameter[] parameters)
        {
            foreach (SqlParameter parameter in parameters)
                parameter.Direction = ParameterDirection.Input;
            DataSet ds = SqlHelper.ExecuteDataset(sqlConn.ToString(), CommandType.StoredProcedure, ProcedureName, parameters);
            return ds;
        }
    }
}