using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class commodityList : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();

        private void list_Init()
        {
            if (Request.QueryString["key"] == null)
                Repeater1.DataSource = handler.getCommodity();
            else
                Repeater1.DataSource = handler.getSearchData(Request.QueryString["key"].ToString());
            Repeater1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                list_Init();
            }
        }
    }
}