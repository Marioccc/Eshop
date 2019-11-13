using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class basicInfo : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();

        private void info_Init()
        {
            Member member = handler.getMemberData(Session["userID"].ToString());
            user_name.InnerText = member.account;
            user_sex.InnerText = member.sex;
            user_phone.InnerText = member.phone.ToString();
            user_email.InnerText = member.email;
            user_time.InnerText = member.registerDate.ToString("D");
            user_pwd.Value = member.pwd;
            userImg.Src = "./images/userIcon/" + member.headUrl;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                info_Init();
            }
        }

        protected void modifyInfo_Click(object sender, EventArgs e)
        {
            if (handler.checkName(modify_name.Value, Session["userID"].ToString()))
            {
                Member member = new Member();
                member.account = modify_name.Value;
                member.phone = modify_phone.Value;
                if (male.Checked)
                {
                    member.sex = "男";
                }
                else
                {
                    member.sex = "女";
                }
                member.email = modify_email.Value;
                member.pwd = modify_pwd.Value;
                if (handler.updateMemberData(member, Session["userID"].ToString()))
                {
                    Response.Redirect("basicInfo.aspx");
                }
                else
                {
                    Response.Write("<script>alert('修改失败！');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('用户名已存在！');</script>");
            }
            
        }

        private static string imgFileName="";
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (fileUpLoadPic.HasFile) //文件存在
            {
                SaveFile(fileUpLoadPic.PostedFile);//保存上传文件
            }
            else
            {
                Response.Write("<script>alert('上传文件不存在！')</script>");
            }

            if (fileUpLoadPic.PostedFile.FileName == "")  //文件名字
            {
                Response.Write("<script>alert('你还没有选择图片！')</script>");
            }
            else
            {
                string filepath = fileUpLoadPic.PostedFile.FileName;
                string filename = filepath.Substring(filepath.LastIndexOf("\\") + 1);//第一个\转义字符
                if (handler.updateUserImg(Session["userID"].ToString(), imgFileName))
                {
                    string fileEx = filepath.Substring(filepath.LastIndexOf(".") + 1);//从.开始截至最后得到图片格式.jpg
                    if (fileEx == "jpg" || fileEx == "bmp" || fileEx == "gif" || fileEx == "png" || fileEx == "jpeg")
                    {
                        userImg.Src = "./images/userIcon/" + filename;
                        Response.Write("<script>alert('上传成功！')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('上传的格式有问题！'）</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('图片上传失败！'）</script>");
                }
            }
        }


        public void SaveFile(HttpPostedFile file)
        {
            string savePath = HttpContext.Current.Server.MapPath("./images/userIcon/"); 
            string fileName = fileUpLoadPic.FileName;

            string pathToCheck = savePath + fileName;
            string tempfilename = "";
            if (System.IO.File.Exists(pathToCheck))
            {
                int counter = 2;
                while (System.IO.File.Exists(pathToCheck))
                {
                    tempfilename = counter.ToString() + fileName;
                    pathToCheck = savePath + tempfilename;
                    counter++;
                }
                fileName = tempfilename;
            }
            savePath += fileName;
            imgFileName = fileName;
            fileUpLoadPic.SaveAs(savePath);
        }

    }
}