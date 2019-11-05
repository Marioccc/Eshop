using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace eshop31.myhome
{
    public partial class updatepro31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 运行页面时，显示当前用户已有信息
            //Session["userid"] = 7;
            if (Session["userid"] != null && Session["userid"].ToString() != "")
            {
                if (!IsPostBack)
                {
                    string sql = "select * from member where Id=" + Session["userid"].ToString();
                    SqlDataReader dr = DbManager.ExceRead(sql);
                    if (dr.Read())
                    {
                        txtUser.Text = dr["LoginName"].ToString();
                        txtPassword.Text = dr["LoginPwd"].ToString();
                        if (dr["Sex"].ToString() == "男")
                            radlSex.SelectedIndex = 0;
                        else if (dr["Sex"].ToString() == "女")
                            radlSex.SelectedIndex = 1;
                        txtBirth.Text = dr["Birth"].ToString();

                        switch (dr["Eduation"].ToString())
                        {
                            case "大专": dropEducation.SelectedIndex = 0; break;
                            case "本科": dropEducation.SelectedIndex = 1; break;
                            case "硕士": dropEducation.SelectedIndex = 2; break;
                            case "博士": dropEducation.SelectedIndex = 3; break;
                            default: dropEducation.SelectedIndex = 0; break;
                        }
                        txtAddress.Text = dr["Address"].ToString();
                        txtCall.Text = dr["Phone"].ToString();
                        txtEmail.Text = dr["Email"].ToString();
                        txtZip.Text = dr["Zip"].ToString();
                        Image1.ImageUrl = "~/" + dr["head"].ToString();
                    }
                }
            }
            else
                Response.Redirect("~\\login31.aspx");
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            string loginname = txtUser.Text;                      //用户名
            string loginpwd = txtPassword.Text;                  //密码
            string sex = radlSex.SelectedValue;                  //性别
            string birth = txtBirth.Text;                       //出生日期
            string eduation = dropEducation.SelectedValue;       //学历
            string phone = txtCall.Text;                         //电话
            string address = txtAddress.Text;                    //地址
            string zip = txtZip.Text;                           //邮政编码
            string email = txtEmail.Text;                       //电子邮件
            string lasttime = DateTime.Now.ToShortDateString();  //最后登录时间
            string head = Image1.ImageUrl;
            if (FileUpload1.HasFile)
            {
                string strFileName = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                //以时间命名图片
                FileUpload1.SaveAs(Server.MapPath("..") + "\\image\\" + strFileName + ".jpg");
                if (head != null && head != "")
                {
                   

                    File.Delete(Server.MapPath(head));   //将图片从服务器上删除原图片
                }
                head = "image/" + strFileName + ".jpg";
                //2.书写SQL语句
            }
            string strsql = string.Format("update  member set LoginName='{0}',LoginPwd='{1}',sex='{2}',Birth='{3}',Eduation='{4}',phone='{5}',Address='{6}',Zip='{7}',Email='{8}',LastDate='{9}',head='{10}' where id={11}", loginname, loginpwd, sex, birth, eduation, phone, address, zip, email, lasttime, head, Session["userid"].ToString());
            //4.将数据写入数据库
            if (DbManager.ExceSQL(strsql))
            {
                Response.Write( "<script>alert('用户资料修改成功')</script>");
                Response.Redirect("..\\login31.aspx");
            }
        }
    }
}