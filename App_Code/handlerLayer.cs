using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eshop.App_Code
{
    public class handlerLayer
    {
        private dataLayer data = new dataLayer();
        public bool register(Member member)
        {
            string cmd = string.Format("insert into member (Memberlevel,LoginName,LoginPwd,Sex,Birth,Eduation,Phone,Address,Zip,Email,RegDate,LoginTimes) values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}',{11})"
                , member.level, member.account, member.pwd, member.sex, member.birthdate, member.education, member.phone, member.address, member.zip, member.email, member.registerDate, member.loginTimes);
            if(data.updateData(cmd))
            {
                return true;
            }
            return false;
        }

        public bool login(string name,string pwd)
        {
            string cmd = string.Format("select * from member where LoginName='{0}' and LoginPwd='{1}'", name, pwd);
            if(data.queryData(cmd)!=null)
            {
                return true;
            }
            return false;
        }

        public string getUserImg(string id)
        {
            string cmd = string.Format("select head from member where LoginName='{0}' ", id);
            object result = data.queryData(cmd);
            if (result!=null)
            {
                return result.ToString();
            }
            return "";
        }

        public bool setUserImg(string url,string id)
        {
            string cmd = string.Format("update  member set head='{0}' where LoginName='{1}' ", url,id);
            if (data.updateData(cmd))
            {
                return true;
            }
            return false;
        }
    }
}