using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace eshop31
{
    public partial class login31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string check = Request.Cookies["mycheck"].Value.ToString();  //获取验证码；
            if (check == txtCheckcode.Text)
            {
                #region 使用数据访问类来完成登录
                string sql = string.Format("select * from  member where LoginName='{0}' and LoginPwd='{1}'", txtAccount.Text, txtPassword.Text);
                SqlDataReader mydr = DbManager.ExceRead(sql);
                if (mydr.Read())
                {
                    //登录次数更新；
                    int userid = Int32.Parse(mydr["Id"].ToString()); //获取用户ID 
                    Session.Timeout = 20;
                    Session["userid"] = userid;
                    Session["username"] = txtAccount.Text;
                    Response.Write("<script>alert('" + Session["username"].ToString() + "')</script>");

                    string strsql = string.Format("update member set LoginTimes =LoginTimes +1 where Id={0}", userid);  //将登录次数加1

                    if (DbManager.ExceSQL(strsql) == true)
                    {
                        Response.Write("<script>alert('更新成功！')</script>");
                        Response.Redirect("product31.aspx");
                    }
                    else
                        Response.Write("<script>alert('不成功！')</script>");
                    #region//保存用户名和密码
                    #endregion
                }
                else
                {
                    Response.Write("<script>alert('用户名或密码不正确')</script>");
                }
                #endregion
            }
            else
                Response.Write("<script>alert('验证码不正确')</script>");
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("reg31.aspx");
        }
    }
}