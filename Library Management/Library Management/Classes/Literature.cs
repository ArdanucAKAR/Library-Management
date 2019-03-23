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
        public PublishInfo _PublishInfo { get; set; }
        public int PageNumber { get; set; }


        public virtual void Add(){}

        public void Delete()
        {
            throw new NotImplementedException();
        }

        public void Update()
        {
            throw new NotImplementedException();
        }
    }
}