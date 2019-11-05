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
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                evaluationList.DataSource = handler.getEvaluation("21");
                evaluationList.DataBind();
            }
        }
    }
}