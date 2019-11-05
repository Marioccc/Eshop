using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace eshop201702845.myhome
{
    public partial class photo31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["username"] != "")
            {
                string strsql = string.Format("select * from member where id={0}", Session["userid"]);
                SqlDataReader dr = DbManager.ExceRead(strsql);
                if (dr.Read())
                {
                    imgHead.ImageUrl = "../" + dr["head"].ToString();


                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //1.是否有图片要上传
            if (fupHead .HasFile)
            {
                string strType = fupHead.PostedFile.ContentType;

                //判断上传的文件类型是否是常见图像
                if (strType == "image/bmp" || strType == "image/jpeg" || strType == "image/gif" || strType == "image/png")
                {

                    //生成一个日期和时间组合成的文件名；
                    string strfilename = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                    //上传文件重命名为时间和日期的组合 ，不易重名，可防止上传文件互相覆盖

                    fupHead.SaveAs(Server.MapPath("../image/" + strfilename + ".jpg"));
                    string userhead = "image/" + strfilename + ".jpg";
                    int userid = Int32.Parse(Session["userid"].ToString());
                    string strsql = string.Format("update member set head='{0}' where id={1}", userhead, userid);
                    if (DbManager.ExceSQL(strsql))
                    {
                        Response.Write("<script>alert('头像更新成功')</script>");
                        imgHead.ImageUrl = userhead;

                        //删除原来的图片（此处略）

                         strsql = string.Format("select * from member where id={0}", Session["userid"]);
                        SqlDataReader dr = DbManager.ExceRead(strsql);
                        if (dr.Read())
                        {
                            imgHead.ImageUrl = "../" + dr["head"].ToString();


                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('头像更新失败，请重新操作')</script>");
                    }
                }
                else
                    Response.Write("<script>alert('文件类型不正确')</script>");
            }
            else
                Response.Write("<script>alert('请选择您的照片')</script>");
        }
    }
}