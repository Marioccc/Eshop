using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;
namespace Eshop.frontend
{
    public partial class login : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string validateCode = Session["ValidateCode"].ToString();
            if(validate.Text.Trim().ToUpper()!=validateCode)
            {
                Response.Write("<script>alert('验证码错误！');</script>");
            }
            else
            {
                if (handler.login(name.Text, pwd.Text))
                {
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Write("<script>alert('账号或密码错误！');</script>");
                }
            }
        }
    }
}