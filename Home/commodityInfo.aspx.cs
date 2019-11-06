using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class commodityInfo : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Repeater1.DataSource = handler.getCommodity(Request.QueryString["id"].ToString());
                Repeater1.DataBind();
            }
        }

        protected void addToCart_Click(object sender, EventArgs e)
        {
            if(handler.addToCart("21",Request.QueryString["id"],"1", "199" ) )
            {
                Response.Write("<script>alert('添加成功！');</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败！');</script>");
            }
            
        }
    }
}