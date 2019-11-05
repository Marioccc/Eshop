using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop201702845.myhome
{
    public partial class myalloeder3131 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                int rownum = e.Item.Itemindex31;
                switch (Int32.Parse(((Label)e.Item.FindControl("lblStatus")).Text))
                {
                    case 0:
                        ((Label)e.Item.FindControl("lblStatus")).Text = "等待付款";
                        ((LinkButton)e.Item.FindControl("lbtnOper")).Text = "付款";
                        break;
                    case 1: ((Label)e.Item.FindControl("lblStatus")).Text = "等待发货";
                        ((LinkButton)e.Item.FindControl("lbtnOper")).Text = "提醒发货";
                        break;
                    case 2: ((Label)e.Item.FindControl("lblStatus")).Text = "卖家已发货";
                        ((LinkButton)e.Item.FindControl("lbtnOper")).Text = "确认收货";
                        break;
                    case 3: ((Label)e.Item.FindControl("lblStatus")).Text = "交易完成";
                        ((LinkButton)e.Item.FindControl("lbtnOper")).Text = "评价";
                        break;
                    case 4: ((Label)e.Item.FindControl("lblStatus")).Text = "交易完成";
                        ((LinkButton)e.Item.FindControl("lbtnOper")).Visible = false;
                        ((Label)e.Item.FindControl("Label1")).Visible = true;
                        break;
                }
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "oper")
            {
                string orderid = ((Label)e.Item.FindControl("lblOrderid")).Text;
                LinkButton btn = (LinkButton)(e.Item.FindControl("lbtnOper"));
                string strsql = "";
                string operdate = DateTime.Now.ToString();
                switch (btn.Text.Trim())
                {
                    case "付款":
                        strsql = string.Format("update orders set status=1,paydate='{0}' where OrderId='{1}'", operdate, orderid);
                        if (DbManager.ExceSQL(strsql))
                        {
                            Response.Write("<script>alert('已经付款，等待发货')</script>");
                            Repeater1.DataBind();
                        }
                        break;

                    case "提醒发货":

                        Response.Write("<script>alert('已经提醒卖家')</script>");
                        break;

                    case "确认收货":
                        strsql = string.Format("update orders set status=3,ReceiptDate='{0}' where OrderId='{1}'", operdate, orderid);
                        if (DbManager.ExceSQL(strsql))
                        {
                            Response.Write("<script>alert('交易完成')</script>");
                            Repeater1.DataBind();
                        }
                        break;
                    case "评价":
                        Response.Write("evaluation.aspx?orderid=" + orderid);
                        break;
                }
            }
        }
    }
}