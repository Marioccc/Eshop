using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop201702845
{
    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label2.Text = "您是该网站的第<B>" + Application["count"].ToString() + "</B>位访问者！";
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string strsql = string.Format("select * from merchandisc where MerName like '%{0}%'", txtSearch.Text);
            SqlDataSource1.SelectCommand = strsql;
            GridView1.DataBind();
        }
    }
}