using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class PublishInfo
    {
        public string AuthorFullName { get; set; }
        public string Publisher { get; set; }
        public string PublishingLocation { get; set; }
        public int Circulation { get; set; }
        public string PublishDate { get; set; }
    }
}