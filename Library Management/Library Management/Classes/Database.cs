﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Microsoft.ApplicationBlocks.Data;

namespace Library_Management
{
    public static class Database
    {
        public static string sqlConn = ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString;
        public static string ProcedureName { get; set; }
        public static DataSet Queries(SqlParameter[] parameters)
        {
            if (parameters != null)
                foreach (SqlParameter parameter in parameters)
                    parameter.Direction = ParameterDirection.Input;

            return SqlHelper.ExecuteDataset(sqlConn.ToString(), CommandType.StoredProcedure, ProcedureName, parameters);
        }
        public static DataSet QueryWithSql(string query)
        {
            return SqlHelper.ExecuteDataset(sqlConn.ToString(), CommandType.Text, query);
        }
    }
}