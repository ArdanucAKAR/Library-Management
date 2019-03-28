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
        public MemberLibraryInfo MemberLibraryInfo { get; set; }
        public PersonelInfo PersonelInfo { get; set; }
        public Contact Contact { get; set; }

        public bool Add()
        {
            Database.ProcedureName = "dbo.AddMember";

            SqlParameter[] spParameter = new SqlParameter[11];
            spParameter[0] = new SqlParameter("@tcNumber", SqlDbType.NVarChar, 100);
            spParameter[0].Value = PersonelInfo.TCNumber;

            spParameter[1] = new SqlParameter("@fullName", SqlDbType.NVarChar, 100);
            spParameter[1].Value = PersonelInfo.FullName;

            spParameter[2] = new SqlParameter("@mail", SqlDbType.NVarChar, 100);
            spParameter[2].Value = Contact.Mail;

            spParameter[3] = new SqlParameter("@birthday", SqlDbType.Date);
            spParameter[3].Value = PersonelInfo.Birthday;

            spParameter[4] = new SqlParameter("@educationLevel", SqlDbType.Int);
            spParameter[4].Value = (int)PersonelInfo.EducationLevel;

            spParameter[5] = new SqlParameter("@gender", SqlDbType.Int);
            spParameter[5].Value = PersonelInfo.Gender;

            spParameter[6] = new SqlParameter("@address", SqlDbType.NVarChar, 100);
            spParameter[6].Value = Contact.Address;

            spParameter[7] = new SqlParameter("@registerDate", SqlDbType.Date);
            spParameter[7].Value = MemberLibraryInfo.RegisterDate;

            spParameter[8] = new SqlParameter("@libraryPoint", SqlDbType.Int);
            spParameter[8].Value = MemberLibraryInfo.LibraryPoint;

            spParameter[9] = new SqlParameter("@phone", SqlDbType.NVarChar, 100);
            spParameter[9].Value = Contact.PhoneNumber;

            spParameter[10] = new SqlParameter("@status", SqlDbType.Int);
            spParameter[10].Value = (int)MemberLibraryInfo.Status;

            try
            {
                Database.Queries(spParameter);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Delete()
        {
            Database.ProcedureName = "dbo.DeleteMember";

            SqlParameter[] spParameter = new SqlParameter[1];
            spParameter[0] = new SqlParameter("@id", SqlDbType.Int);
            spParameter[0].Value = ID;

            try
            {
                Database.Queries(spParameter);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Update()
        {
            Database.ProcedureName = "dbo.UpdateMember";

            SqlParameter[] spParameter = new SqlParameter[9];
            spParameter[0] = new SqlParameter("@id", SqlDbType.NVarChar, 100);
            spParameter[0].Value = ID;

            spParameter[1] = new SqlParameter("@tcNumber", SqlDbType.NVarChar, 100);
            spParameter[1].Value = PersonelInfo.TCNumber;

            spParameter[2] = new SqlParameter("@fullName", SqlDbType.NVarChar, 100);
            spParameter[2].Value = PersonelInfo.FullName;

            spParameter[3] = new SqlParameter("@mail", SqlDbType.NVarChar, 100);
            spParameter[3].Value = Contact.Mail;

            spParameter[4] = new SqlParameter("@birthday", SqlDbType.Date);
            spParameter[4].Value = PersonelInfo.Birthday;

            spParameter[5] = new SqlParameter("@educationLevel", SqlDbType.Int);
            spParameter[5].Value = (int)PersonelInfo.EducationLevel;

            spParameter[6] = new SqlParameter("@gender", SqlDbType.Int);
            spParameter[6].Value = PersonelInfo.Gender;

            spParameter[7] = new SqlParameter("@address", SqlDbType.NVarChar, 100);
            spParameter[7].Value = Contact.Address;

            spParameter[8] = new SqlParameter("@phone", SqlDbType.NVarChar, 100);
            spParameter[8].Value = Contact.PhoneNumber;

            try
            {
                Database.Queries(spParameter);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public List<Book> GetLoanedBooks()
        {
            Database.ProcedureName = "dbo.GetLoanedBooks";

            SqlParameter[] spParameter = new SqlParameter[1];
            spParameter[0] = new SqlParameter("@id", SqlDbType.Int);
            spParameter[0].Value = ID;

            List<Book> books = new List<Book>();
            DataSet ds = Database.Queries(spParameter);
            if (ds.Tables[0].Rows.Count != 0)
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    books.Add(new Book
                    {
                        ID = int.Parse(row["id"].ToString()),
                        Name = row["name"].ToString(),
                        PublishInfo = new PublishInfo()
                        {
                            AuthorFullName = row["authorFullName"].ToString(),
                            Publisher = row["publisher"].ToString()
                        },
                        ISBNCode = row["isbn"].ToString()
                    });
                }
            return books;
        }

        public List<Magazine> GetLoanedMagazines()
        {
            Database.ProcedureName = "dbo.GetLoanedMagazines";

            SqlParameter[] spParameter = new SqlParameter[1];
            spParameter[0] = new SqlParameter("@id", SqlDbType.Int);
            spParameter[0].Value = ID;

            List<Magazine> magazines = new List<Magazine>();
            DataSet ds = Database.Queries(spParameter);
            if (ds.Tables[0].Rows.Count != 0)
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    magazines.Add(new Magazine
                    {
                        ID = int.Parse(row["id"].ToString()),
                        Name = row["name"].ToString(),
                        PublishInfo = new PublishInfo()
                        {
                            AuthorFullName = row["authorFullName"].ToString(),
                            Publisher = row["publisher"].ToString()
                        },
                        ISSNCode = row["issn"].ToString()
                    });
                }
            return magazines;
        }

        public void GetMemberInformation()
        {
            Database.ProcedureName = "dbo.GetMemberInformation";
            SqlParameter[] spParameter = new SqlParameter[1];

            spParameter[0] = new SqlParameter("@id", SqlDbType.Int);
            spParameter[0].Value = ID;

            DataSet ds = Database.Queries(spParameter);
            if (ds.Tables[0].Rows.Count != 0)
            {
                PersonelInfo personelInfo = new PersonelInfo();
                Contact contact = new Contact();
                personelInfo.FullName = ds.Tables[0].Rows[0]["fullName"].ToString();
                personelInfo.Gender = (Gender)int.Parse(ds.Tables[0].Rows[0]["gender"].ToString());
                personelInfo.EducationLevel = (EducationLevel)int.Parse(ds.Tables[0].Rows[0]["educationLevel"].ToString());
                personelInfo.Birthday = DateTime.Parse(ds.Tables[0].Rows[0]["birthday"].ToString());
                personelInfo.TCNumber = ds.Tables[0].Rows[0]["tcNumber"].ToString();
                contact.Address = ds.Tables[0].Rows[0]["address"].ToString();
                contact.PhoneNumber = ds.Tables[0].Rows[0]["phoneNumber"].ToString();
                contact.Mail = ds.Tables[0].Rows[0]["mail"].ToString();
                PersonelInfo = personelInfo;
                Contact = contact;
            }
        }
    }
}