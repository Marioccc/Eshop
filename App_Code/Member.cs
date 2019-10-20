using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eshop.App_Code
{
    public class Member
    {
        public int level=0;
        public string account;
        public string pwd;
        public string sex;
        public DateTime birthdate;
        public string education;
        public int phone;
        public string address;
        public int zip;
        public string email;
        public DateTime registerDate;
        public int loginTimes=0;
        public string headUrl;
    }
}