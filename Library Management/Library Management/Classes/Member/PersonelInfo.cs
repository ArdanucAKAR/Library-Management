using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class PersonelInfo
    {
        public string FullName { get; set; }
        public DateTime Birthday { get; set; }
        public Gender Gender { get; set; }
        public EducationLevel EducationLevel { get; set; }
        public string TCNumber { get; set; }
    }
}