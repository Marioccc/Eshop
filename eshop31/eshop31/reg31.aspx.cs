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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        { /* string str = "注册信息为;\\n";
             str += "用户账户:" + txtAccount.Text + "\\n";
             str += "出生年月:" + txtBirth.Text + "\\n";
             str += "联系地址:" + txtAddress.Text + "\\n";
             str += "联系电话:" + txtTel.Text + "\\n";
             str += "电子邮箱:" + txtEmail.Text + "\\n";
             str += "邮政编码:" + txtPostcode.Text + "\\n";
             str += "性别:" + rdolSex.SelectedValue + "\\n";
             str += "学历:" + ddlEdu.SelectedValue + "\\n";
             string strAttention = "您关注的类型为：";
             for (int i = 0; i < chlAttention.Items.Count; i++)
             {
                 if (chlAttention.Items[i].Selected)
                     strAttention += chlAttention.Items[i].Text + " ";
             }
             str += strAttention;
             Response.Write("<script>alert('" + str + "')</script>");
             */
            //1.检测用户是否已经存在
            string loginname = txtUser.Text;                     //登陆名
            string strfind = string.Format("select * from member where LoginName='{0}'", loginname);
            SqlDataReader dr = DbManager.ExceRead(strfind);
            if (dr.Read())
                Response.Write("<script>alert('用户已经存在')</script>");
            else
            {

                //2.获取用户输入的各项值

                string loginpwd = txtPassword.Text;                  //密码
                string sex = radlSex.SelectedValue;                  //性别
                string birth = txtBirth.Text;                       //出生日期
                string eduation = dropEducation.SelectedValue;       //学历
                string phone = txtCall.Text;                         //电话
                string address = txtAddress.Text;                    //地址
                string zip = txtZip.Text;                           //邮政编码
                string email = txtEmail.Text;                       //电子邮件
                string regdate = DateTime.Now.ToShortDateString();  //注册时间

                //3.书写SQL语句

                string strsql = string.Format("insert into member values(0,'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','','','')", loginname, loginpwd, sex, birth, eduation, phone, address, zip, email, regdate);


                //4.将数据写入数据库
                if (DbManager.ExceSQL(strsql))
                {
                    Response.Write("<script>alert('用户注册成功')</script>");
                    Response.Redirect("login31.aspx");
                }
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("login31.aspx");
        }
    }
}