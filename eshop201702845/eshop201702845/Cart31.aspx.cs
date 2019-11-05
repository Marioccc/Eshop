using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace eshop201702845
{
    public partial class cart31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null || Session["userid"].ToString() == "")
            {
                Response.Redirect("login.aspx");
                Session["link"] = "cart.aspx";
            }
            lblTotal.Text = Calculate().ToString("c");
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label lblPrice = e.Item.FindControl("lbl_sprice") as Label;

                float price = float.Parse(lblPrice.Text.Substring(1));
                TextBox txtNum = e.Item.FindControl("txt_num") as TextBox;
                int num = Int32.Parse(txtNum.Text);

                float sum = price * num;
                Label lblSum = e.Item.FindControl("lbl_sum") as Label;
                lblSum.Text = sum.ToString("C");
            }
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            string strsql = string.Format("delete from cart where CartId={0}", DataList1.DataKeys[e.Item.Itemindex31].ToString());
            if (DbManager.ExceSQL(strsql))
            {
                Response.Write("<script>alert('删除成功')</script>");
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCreated(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
            {

                //将子控件Button1转换为ButtonDel
                Button ButtonDel = (Button)e.Item.FindControl("btn_oper");
                //为＂删除＂按钮添加属性，以便单击它时弹出确认框
                ButtonDel.Attributes.Add("onclick", "return confirm('确实要删除此行吗？');");
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "operNum")
            {
                //获取子控件txt_numm转换为txtNum
                TextBox txtNum = e.Item.FindControl("txt_num") as TextBox;
                int num = Int32.Parse(txtNum.Text);
                int cartid = Int32.Parse(DataList1.DataKeys[e.Item.Itemindex31].ToString());
                //更新到数据库
                string strsql = string.Format("update cart set Amount={0} where CartId={1}", num, cartid);
                if (DbManager.ExceSQL(strsql))
                {
                    Response.Write("<script>alert('修改成功')</script>");
                    DataList1.DataBind();
                }
            }
        }
        public float Calculate()
        {
            float total = 0;
            for (int i = 0; i < DataList1.Items.Count; i++)
            {
                CheckBox check = DataList1.Items[i].FindControl("chk_Select") as CheckBox;
                if (check.Checked)
                {
                    Label lblSum = DataList1.Items[i].FindControl("lbl_sum") as Label;
                    total += float.Parse(lblSum.Text.Substring(1));
                }
            }
            return total;
        }

        protected void chk_All_CheckedChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < DataList1.Items.Count; i++)
            {
                CheckBox check = DataList1.Items[i].FindControl("chk_Select") as CheckBox;
                check.Checked = chk_All.Checked;
            }
            lblTotal.Text = Calculate().ToString("c");
        }

        protected void chk_Select_CheckedChanged(object sender, EventArgs e)
        {
            lblTotal.Text = Calculate().ToString("c");
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = new DataTable();
            //商品编号  
            dt.Columns.Add("id", typeof(Int32));
            //商品名称  
            dt.Columns.Add("productname", typeof(string));
            //商品价格(本站价格)  
            dt.Columns.Add("localprice", typeof(string));
            //商品发布价格  
            dt.Columns.Add("posttime", typeof(string));
            //购买数量  
            dt.Columns.Add("buycount", typeof(Int32));
            float total = 0;
            for (int i = 0; i < DataList1.Items.Count; i++)
            {

                CheckBox check = DataList1.Items[i].FindControl("chk_Select") as CheckBox;
                if (check.Checked)
                {
                    DataRow row = dt.NewRow();
                    row["id"] = Int32.Parse((DataList1.Items[i].FindControl("chk_Select") as CheckBox).Text);
                    row["productname"] = (DataList1.Items[i].FindControl("hl_productname") as HyperLink).Text;
                    row["localPrice"] = (DataList1.Items[i].FindControl("lbl_sprice") as Label).Text;
                    row["buycount"] = Int32.Parse((DataList1.Items[i].FindControl("txt_num") as TextBox).Text);
                    dt.Rows.Add(row);
                    Label lblSum = (Label)DataList1.Items[i].FindControl("lbl_sum");
                    total += float.Parse(lblSum.Text.Substring(1));
                }
            }
            Session["shopcart"] = dt;
            Session["total"] = total;
            Response.Redirect("order31.aspx");
        }

        protected void btnShop_Click(object sender, EventArgs e)
        {
            Response.Redirect("product.aspx");
        }
    }
}