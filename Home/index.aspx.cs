using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.frontend
{
    public partial class index : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            //interview.Text = "当前在线人数：" + Application["count"].ToString();
            if(!IsPostBack)
            {
                
            }
            discountList.DataSource = handler.getRandomCommodity();
            discountList.DataBind();
        }
    }
}