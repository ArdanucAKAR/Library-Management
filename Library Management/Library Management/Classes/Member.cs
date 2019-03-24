using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library_Management
{
    public class Member : IOperations
    {
        public int ID { get; set; }
        public string TCNumber { get; set; }
        public DateTime RegisterDate { get; set; }
        public int LibraryPoint { get; set; }
        public int status { get; set; }

        private Personelnfo personelnfo;
        private Contact contact;

        public Member(Personelnfo _personelnfo)
        {
            personelnfo = _personelnfo;
        }

        public void AssociateWithContact(Contact _contact)
        {
            contact = _contact;
        }

        public void Add()
        {
            Database.ProcedureName = "dbo.AddMember";

            SqlParameter[] spParameter = new SqlParameter[11];
            spParameter[0] = new SqlParameter("@tcNumber", SqlDbType.NVarChar, 100);
            spParameter[0].Value = TCNumber;

            spParameter[1] = new SqlParameter("@fullName", SqlDbType.NVarChar, 100);
            spParameter[1].Value = personelnfo.FullName;

            spParameter[2] = new SqlParameter("@mail", SqlDbType.NVarChar, 100);
            spParameter[2].Value = contact.Mail;

            spParameter[3] = new SqlParameter("@age", SqlDbType.Int);
            spParameter[3].Value = personelnfo.Age;

            spParameter[4] = new SqlParameter("@educationLevel", SqlDbType.Int);
            spParameter[4].Value = personelnfo.EducationLevel;

            spParameter[5] = new SqlParameter("@gender", SqlDbType.Int);
            spParameter[5].Value = personelnfo.Gender;

            spParameter[6] = new SqlParameter("@address", SqlDbType.NVarChar, 100);
            spParameter[6].Value = personelnfo.Adress;

            spParameter[7] = new SqlParameter("@registerDate", SqlDbType.DateTime);
            spParameter[7].Value = RegisterDate;

            spParameter[8] = new SqlParameter("@libraryPoint", SqlDbType.Int);
            spParameter[8].Value = LibraryPoint;

            spParameter[9] = new SqlParameter("@phone", SqlDbType.NVarChar, 100);
            spParameter[9].Value = contact.PhoneNumber;

            spParameter[10] = new SqlParameter("@status", SqlDbType.Int);
            spParameter[10].Value = status;


            Database.Queries(spParameter);
        }

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