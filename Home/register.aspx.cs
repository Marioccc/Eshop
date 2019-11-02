using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.frontend
{
    public partial class register : System.Web.UI.Page
    {
        private handlerLayer handler = new handlerLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Member member = new Member();
            member.account = account.Text;
            member.pwd = pwd.Text;
            member.phone = int.Parse(phone.Text);
            member.email = email.Text;
            if (handler.register(member))
            {
                Response.Write("<script>alert('注册成功！')</script>");
                Server.Transfer("login.aspx");
            }
            else
            {
                Response.Write("<script>alert('注册失败！')</script>");
            }
        }
    }
}