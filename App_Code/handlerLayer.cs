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

        /*
        public DataSet getContactData(string id)
        {
            string cmd = string.Format("select * from contact where MemberId={0} and DefaultValue=1", id);
            DataSet result = data.getData(cmd);
            if (result.Tables[0].Rows.Count==0)
            {
                string chooseFirst = string.Format("select top 1*  from contact where  MemberId={0}", id);
                return data.getData(chooseFirst);
            }
            return data.getData(cmd);
        }
        */
        public SqlDataReader getContactData(string id)
        {
            string cmd = string.Format("select * from contact where MemberId={0} and DefaultValue=1", id);
            SqlDataReader result = data.getReader(cmd);
            if (!result.Read()) {
                string chooseFirst = string.Format("select top 1*  from contact where  MemberId={0}", id);
                return data.getReader(chooseFirst);
            }
            return result;
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

        public bool addContact(Contact contact)
        {
            if (contact.defaultAddress == 1)
            {
                string clearDefaultCmd = string.Format("update contact set DefaultValue=0 where MemberId={0}", contact.memberID);
                if (!data.updateData(clearDefaultCmd)) return false;
            }
            string cmd = string.Format("insert into contact (MemberId,Addressee,address,phone,zip,DefaultValue,detailAddress,province,city,area) values ({0},'{1}','{2}','{3}','{4}',{5},'{6}','{7}','{8}','{9}')"
                , contact.memberID, contact.name, contact.address, contact.phone, contact.zip, contact.defaultAddress,contact.detailAddress,contact.province,contact.city,contact.area);
            return data.updateData(cmd);
        }

        public DataSet getAddressData(string id)
        {
            string cmd = string.Format("select * from contact where MemberId={0}", id);
            return data.getData(cmd);
        }

        public bool deleteContact(string id)
        {
            string cmd = string.Format("delete from contact where ContactId={0}", id);
            return data.updateData(cmd);
        }

        public bool commitOrder(Order order)
        {
            string insertOrder = string.Format("insert into orders(OrderId,MemberId,ContactId,Total,Status,OrderDate,evaluationID) values('{0}',{1},{2},{3},0,'{4}',-1)",
                order.orderID, order.memberID, order.contactID, order.totalPrice, order.date);
            if (data.updateData(insertOrder))
            {
                string queryCartData = "select * from cart where payState=1";
                SqlDataReader reader = data.getReader(queryCartData);
                while (reader.Read())
                {
                    string cartID = reader["CartId"].ToString();
                    string commodityID = reader["MerId"].ToString();
                    string amount = reader["Amount"].ToString();
                    string totalPrice = reader["totalPrice"].ToString();

                    string insertOrderDetail = string.Format("insert into orderDetail (orderID,commodityID,amount,totalPrice) values ('{0}',{1},{2},{3})", order.orderID, commodityID, amount, totalPrice);
                    if (!data.updateData(insertOrderDetail)) return false;

                    string deleteCart = string.Format("delete from cart where CartId={0}", cartID);
                    if (!data.updateData(deleteCart)) return false;
                }
                
            }
            return true;
        }

        public DataSet getOrderData()
        {
            string cmd = "select * from orders";
            return data.getData(cmd);
        }

        public DataSet getOrderDetailData(string orderID)
        {
            string cmd = string.Format("select * from orderDetail inner join commodityInfo on orderDetail.commodityID = commodityInfo.Id where orderID='{0}'", orderID);
            return data.getData(cmd);
        }

        public bool deleteOrder(string id)
        {
            string cmd = string.Format("delete from orders where OrderId='{0}'", id);
            return data.updateData(cmd);
        }

        public bool updateDefaultAddress(Contact contact,string contactID)
        {
            string cmd = string.Format("update contact set Addressee='{0}',address='{1}',phone='{2}',zip='{3}',detailAddress='{4}',province='{5}',city='{6}',area='{7}' where ContactId={8}",
                contact.name, contact.address, contact.phone, contact.zip, contact.detailAddress, contact.province, contact.city, contact.area, contactID);
            return data.updateData(cmd);
        }

        public Member getMemberData(string id)
        {
            string cmd = string.Format("select * from member where Id={0}", id);
            SqlDataReader result = data.getReader(cmd);
            Member member = new Member();
            if (result.Read())
            {
                member.account = result["Name"].ToString();
                member.pwd = result["Pwd"].ToString();
                member.sex = result["Sex"].ToString();
                member.phone = result["Phone"].ToString(); 
                member.email = result["Email"].ToString();
                member.registerDate = DateTime.Parse(result["RegDate"].ToString());
                member.headUrl = result["HeadImg"].ToString();
            }
            return member;
        }

        public bool checkName(string name,string id)
        {
            string cmd = string.Format("select COUNT(*) from member where Name='{0}' and Id!={1} ", name,id);
            int result = int.Parse(data.queryData(cmd).ToString());
            if (result == 0) return true;
            return false;
        }
        public bool updateMemberData(Member member,string id)
        {
            string cmd = string.Format("update member set Name='{0}',Pwd='{1}',Sex='{2}',Phone='{3}',Email='{4}' where Id={5}",
                member.account, member.pwd, member.sex, member.phone, member.email, id);
            
            return data.updateData(cmd);
        }

        public bool updateUserImg(string id,string imgName)
        {
            string cmd = string.Format("update member set HeadImg='{0}' where Id={1}", imgName, id);
            return data.updateData(cmd);
        }
        public bool orderEvaluation(int level , string evaluation , string orderID, string commodityID  , string memberID)
        {
            string getCommodityData = string.Format("select * from commodityInfo where Id={0}", commodityID);
            SqlDataReader commodityData = data.getReader(getCommodityData);
            string commodityInfo="", commodityMerchant="", commodityPrice="";
            if (commodityData.Read())
            {
                commodityInfo = commodityData["Name"].ToString();
                commodityMerchant = commodityData["GoodFacturer"].ToString();
                commodityPrice = commodityData["Price"].ToString();
            }
            string cmd = string.Format("insert into evaluation (MerId,message,merchant,time,commodityInfo,commodityPrice,gradeLevel,orderID) values({0},'{1}','{2}','{3}','{4}',{5},{6},'{7}')",
               memberID,evaluation,commodityMerchant,DateTime.Now.ToString(), commodityInfo,commodityPrice,level,orderID);
            return data.updateData(cmd);
        }

        public bool deleteEvaluation(string id)
        {
            string cmd = string.Format("delete from evaluation where MessageId={0}", id);
            return data.updateData(cmd);
        }
    }
}