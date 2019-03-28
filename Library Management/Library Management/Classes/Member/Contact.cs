using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class Contact
    {
        public string Address { get; set; }
        public string PhoneNumber { get; set; }
        public string Mail { get; set; }

        public bool SendSms(string message)
        {
            return true;
        }

        public bool SendMail(string subject, string message)
        {
            return true;
        }
    }
}