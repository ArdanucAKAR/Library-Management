using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class LoanedInfo
    {
        public DateTime LoanDate { get; set; }
        public DateTime ReturnDate { get; set; }
        public int ExtensionCount { get; set; }
        public int RemainingDays { get; set; }
    }
}