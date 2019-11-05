using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace eshop201702845
{
    public partial class detail31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["userid"] == null || Session["userid"].ToString() == "")
            {
                Response.Redirect("login.aspx");
                Session["link"] = "detail.aspx?id=" + Request.QueryString["id"];
            }
            else
            {
                //判断商品是否已经添加过！
                string strsql = "select * from cart where MemberId=" + Session["userid"] + " and MerId=" + Request.QueryString["id"];
                DataSet ds = DbManager.GetDataSet(strsql, "table");
                DataTable dt = ds.Tables["table"];
                if (dt.Rows.Count > 0)
                {

                    //修改当前商品的数量
                    int num = Int32.Parse(dt.Rows[0]["Amount"].ToString()) + Int32.Parse(txt_Num.Text);
                    //修改已经添加过的商品的数量
                    strsql = "update cart set Amount=" + num + "where MemberId=" + Session["userid"] + " and MerId=" + Request.QueryString["id"];
                    if (DbManager.ExceSQL(strsql))
                        RegisterClientScriptBlock("01", "<script>alert('添加成功')</script>");
                }
                else
                {
                    //当前商品不在购物车中，插入商品至购物车中
                    float price = float.Parse(DetailsView1.Rows[4].Cells[1].Text);
                    strsql = "Insert into cart values(" + Session["userid"] + "," + Request.QueryString["id"] + "," + Int32.Parse(txt_Num.Text) + "," + price + ")";
                    if (DbManager.ExceSQL(strsql))
                        RegisterClientScriptBlock("01", "<script>alert('添加成功')</script>");
                }
            }
        }
    }
}