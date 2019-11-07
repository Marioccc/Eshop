using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

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
            string cmd = string.Format("select COUNT(*) from cart where MemberId={0} ",id);
            return (int)data.queryData(cmd);
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

        public DataSet getEvaluation(string id)
        {
            string cmd = string.Format("select * from evaluation where MerId={0} ", id);
            return data.getData(cmd);
        }

        public DataSet getRandomCommodity()
        {
            string cmd = "SELECT TOP 3 * FROM  commodityInfo ORDER BY NEWID()";
            return data.getData(cmd);
        }

        public DataSet getCommodity(string id)
        {
            string cmd = string.Format("select * from commodityInfo where Id={0}", id);
            return data.getData(cmd);
        }

        public bool addToCart(string userID , string commodityID , string num,string price)
        {
            string queryCommodityCmd = string.Format("select * from cart where MemberId={0} and MerId={1}", userID, commodityID);
            if(data.queryData(queryCommodityCmd)==null)
            {
                string cmd = string.Format("insert into cart (MemberId,MerId,Amount,totalPrice,payState) values ({0},{1},{2},{3},{4})", userID, commodityID, num, price,"0");
                if (data.updateData(cmd))
                {
                    return true;
                }
            }
            else
            {
                string queryNumCmd = string.Format("select Amount from cart where  MemberId={0} and MerId={1}", userID, commodityID);
                string queryPriceCmd = string.Format("select totalPrice from cart where  MemberId={0} and MerId={1}", userID, commodityID);
                string queryAmount = data.queryData(queryNumCmd).ToString() ;
                string queryPrice = data.queryData(queryPriceCmd).ToString();
                int totalAmout = int.Parse(queryAmount) + int.Parse(num);
                float totalPrice = float.Parse(queryPrice) + float.Parse(price);
                string cmd = string.Format("update cart set Amount={0},totalPrice={1} where MemberId={2} and MerId={3}",totalAmout,totalPrice , userID, commodityID);
                if (data.updateData(cmd))
                {
                    return true;
                }
            }
            return false;
        }

        public DataSet getCart(string id)
        {
            string cmd = string.Format("select * from commodityInfo inner join cart on commodityInfo.Id = cart.MerId where cart.MemberId={0}", id);
            return data.getData(cmd);
        }

        public bool removeCartItem(string id)
        {
            string cmd = string.Format("delete from cart where CartId={0}", id);
            return data.updateData(cmd);
        }

        public DataSet getContactData(string id)
        {
            string cmd = string.Format("select * from contact where MemberId={0}", id);
            return data.getData(cmd);
        }

        public bool commitToCheckout(string id,string num,string price)
        {
            string cmd = string.Format("update cart set Amount={0},payState={1},totalPrice={2}  where CartId={3}", num,1, price ,id);
            return data.updateData(cmd);
        }

        public DataSet getPayCart(string id)
        {
            string cmd = string.Format("select * from commodityInfo inner join cart on commodityInfo.Id = cart.MerId where cart.MemberId={0} and payState={1}", id,1);
            return data.getData(cmd);
        }

        public bool cartRoallBack(string id)
        {
            string cmd = string.Format("update cart set payState=0 where MemberId={0}", id);
            return data.updateData(cmd);
        }

        public string getCommodityPrice(string id)
        {
            string cmd = string.Format("select Price from commodityInfo where Id={0}", id);
            return data.queryData(cmd).ToString();
        }
    }
}