using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace eshop31
{
    public partial class order31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["shopcart"] != null)
                {
                    DataTable dt = Session["shopcart"] as DataTable;
                    Repeater1.DataSource = dt.DefaultView;
                    Repeater1.DataBind();
                    if (Session["total"] != null)
                        lblTotal.Text = Session["total"].ToString();
                }
                RadioButtonList1.SelectedIndex = 0;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //1.更新订单表
            //（1）.生成订单号－－订单号组成：当前的年月日时分秒+随机数
            Random rnd = new Random();
            int num = rnd.Next(100, 1000);
            string orderid = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute + num.ToString();
            //（2）获取联系地址编号
            int contactid = Int32.Parse(RadioButtonList1.SelectedValue);
            //（3）当前用户ID号  -session["userid"]
            //（4）下单时间
            string orderdate = DateTime.Now.ToString();
            //(4) 订单总价
            float total = float.Parse(lblTotal.Text);
            //（5）配置SQL
            string strsql = string.Format("insert into orders values('{0}',{1},{2},{3},0,'{4}','','','')", orderid, Session["userid"].ToString(), contactid, total, orderdate);
            //（6））更新order表
            if (DbManager.ExceSQL(strsql))
            {
                //2.更新订单详情表
                for (int i = 0; i < Repeater1.Items.Count; i++)
                {
                    int merid = Int32.Parse((Repeater1.Items[i].FindControl("lblId") as Label).Text);
                    float price = float.Parse((Repeater1.Items[i].FindControl("lblPrice") as Label).Text.Substring(1));
                    int amount = Int32.Parse((Repeater1.Items[i].FindControl("lblAmount") as Label).Text);
                    strsql = string.Format("insert into orderDetail values('{0}',{1},{2},{3})", orderid, merid, price, amount);
                    DbManager.ExceSQL(strsql);
                }
                Response.Write("<script> alert('订单生成');window.location.href='myhome/myallorder31.aspx'</script>");
            }
        }

        protected void lnk_address_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/myhome/myaddress31.aspx");

        }
    }
}