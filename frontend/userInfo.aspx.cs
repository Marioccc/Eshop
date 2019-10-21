using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.frontend
{
    public partial class userInfo : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["userID"] == null) Response.Redirect("index.aspx");
                string imgUrl = handler.getUserImg(Session["userID"].ToString());
                if (imgUrl!="")
                {
                    userImg.Src = "./images/userIcon/" + imgUrl;
                }
            }
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if (upload.PostedFile.ContentLength > 0)
            {
                upload.PostedFile.SaveAs(Server.MapPath("./images/userIcon/") + Path.GetFileName(upload.PostedFile.FileName));
                string imgurl = upload.PostedFile.FileName;
                if (handler.setUserImg(imgurl, Session["userID"].ToString()))
                {
                    Response.Write("<script>window.location.href='userInfo.aspx';   </script>");
                }
            }
        }
    }
}