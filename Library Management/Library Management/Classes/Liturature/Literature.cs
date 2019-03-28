using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public abstract class Literature : IOperations
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int Language { get; set; }
        public PublishInfo PublishInfo { get; set; }
        public int PageNumber { get; set; }

        public virtual bool Add()
        {
            throw new NotImplementedException();
        }

        public virtual bool Delete()
        {
            throw new NotImplementedException();
        }

        public virtual bool Update()
        {
            throw new NotImplementedException();
        }

    }
}