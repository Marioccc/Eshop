using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


namespace eshop31
{
    public partial class shop : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["username"] != "")
            {
                lbl_show.Text = Session["username"] + lbl_show.Text;
                lnk_login.Visible = false;
                lnk_reg.Visible = false;
            }
            else
            {
                lnk_Exit.Visible = false;
            }
        }

        protected void lnk_Exit_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            lbl_show.Text = "您好,欢迎光临!";
            lnk_Exit.Visible = true;
            lnk_reg.Visible = true;
            lnk_Exit.Visible = false;
        }
    }
}