using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class evaluation : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();

        private void evaluationList_Init()
        {
            evaluationList.DataSource = handler.getEvaluation(Session["userID"].ToString());
            evaluationList.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                evaluationList_Init();
            }
        }

        protected void deleteItem_Command(object sender, CommandEventArgs e)
        {
            if (!handler.deleteEvaluation(e.CommandArgument.ToString()))
            {
                Response.Write("<script>alert('删除失败！');</script>");
            }
            evaluationList_Init();
        }
    }
}