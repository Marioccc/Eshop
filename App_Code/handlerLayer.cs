﻿using System;
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
            string cmd = string.Format("insert into member (Memberlevel,Name,Pwd,Sex,Phone,Email,RegDate,HeadImg) values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}')"
                , member.level, member.account, member.pwd, member.sex, member.phone, member.email, member.registerDate, "default.png");
            if(data.updateData(cmd))
            {
                return true;
            }
            return false;
        }

        public bool login(string name,string pwd)
        {
            string cmd = string.Format("select * from member where Name='{0}' and Pwd='{1}'", name, pwd);
            if(data.queryData(cmd)!=null)
            {
                return true;
            }
            return false;
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

        public int getCartNum(string id)
        {
            string cmd = string.Format("select * from cart where MemberId={0} ",id);
            return data.getDataNum(cmd);
        }

        public string getUserID(string name)
        {
            string cmd = string.Format("select Id from member where Name='{0}' ", name);
            string result = data.queryData(cmd).ToString();
            return result;
        }

        public string getUserImg(string id)
        {
            string cmd = string.Format("select HeadImg from member where Name='{0}' ", id);
            object result = data.queryData(cmd);
            return result.ToString();
        }
    }
}