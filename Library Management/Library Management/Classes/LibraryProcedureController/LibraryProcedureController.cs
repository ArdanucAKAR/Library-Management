using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public abstract class LibraryProcedureController : IOperations
    {
        public int ID { get; set; }
        public Member Member { get; set; }
        public Literature Literature { get; set; }
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