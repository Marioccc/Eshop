using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace eshop31
{
    public partial class product31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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