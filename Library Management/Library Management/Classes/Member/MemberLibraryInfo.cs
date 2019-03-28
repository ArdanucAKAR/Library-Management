using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class MemberLibraryInfo
    {
        public DateTime RegisterDate { get; set; }
        public int LibraryPoint { get; set; }
        public Status Status { get; set; }
    }
}