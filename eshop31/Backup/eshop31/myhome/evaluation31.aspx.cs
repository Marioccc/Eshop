using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop31.myhome
{
    public partial class evaluation31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < DataList1.Items.Count; i++)
            {
                int grade = Int32.Parse(((RadioButtonList)DataList1.Items[i].FindControl("radl_grade")).SelectedValue);//获取评分值；
                string topic = ((TextBox)DataList1.Items[i].FindControl("txt_topic")).Text;
                string content = ((TextBox)DataList1.Items[i].FindControl("txt_content")).Text;
                //int goodid = Int32.Parse(((HiddenField)DataList1.Items[i].FindControl("HiddenField1")).Value);
                int goodid = Int32.Parse(DataList1.DataKeys[i].ToString());
                if (content != "" && topic != "")
                {
                    string strsql = "insert into message values(" + goodid + "," + grade + ",'" + topic + "','" + content + "'," + Session["userid"] + ",'" + DateTime.Now.ToString() + "')";
                    DbManager.ExceSQL(strsql);

                }

            }
            Response.Write("<script>alert('评论成功')</script>");
            string sql = "update orders set status=4 where OrderId='" + Request.QueryString["orderid"].ToString() + "'";
            DbManager.ExceSQL(sql);
            Response.Redirect("myallorder31.aspx");
        }
    }
}