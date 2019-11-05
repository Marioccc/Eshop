using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eshop31.myhome
{
    public partial class myaddress31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userid"] == null || Session["userid"].ToString() == "")
            {
                Response.Redirect("..\\login31.aspx");
                Session["link"] = "myhome\\myaddress31.aspx";
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //点击了修改按钮
            if (e.CommandName == "edit")
            {
                DataList1.EditItemIndex = e.Item.ItemIndex;
            }
            //点击了保存按钮
            if (e.CommandName == "save")
            {
                //获取各字段的值
                int contactid = Int32.Parse(DataList1.DataKeys[e.Item.ItemIndex].ToString());
                string addressee = (e.Item.FindControl("txtAddressee") as TextBox).Text;
                string address = (e.Item.FindControl("txtAddress") as TextBox).Text;
                string zip = (e.Item.FindControl("txtZip") as TextBox).Text;
                string phone = (e.Item.FindControl("txtPhone") as TextBox).Text;
                string strsql;

                CheckBox chk = (e.Item.FindControl("CheckBox2") as CheckBox);
                //是否将本地址设置为默认地址
                if (chk.Checked)
                {
                    //取消所有地址的默认设置；
                    strsql = string.Format("update contact set DefaultValue=0 where MemberId={0}", Session["userid"]);
                    DbManager.ExceSQL(strsql);
                    //配置SQL语句－修改记录
                    strsql = string.Format("update contact set Addressee='{0}',address='{1}',phone='{2}',zip='{3}',DefaultValue=1 where ContactId={4}", addressee, address, phone, zip, contactid);

                }
                else
                {
                    //配置SQL语句－修改记录
                    strsql = string.Format("update contact set Addressee='{0}',address='{1}',phone='{2}',zip='{3}' where ContactId={4}", addressee, address, phone, zip, contactid);

                }
                //执行修改命令
                if (DbManager.ExceSQL(strsql))
                    Response.Write("<script>alert('修改成功')</script>");
                DataList1.EditItemIndex = -1;
            }

            DataList1.DataBind();
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            int contactid = Int32.Parse(DataList1.DataKeys[e.Item.ItemIndex].ToString());
            string strsql = string.Format("delete from contact where ContactId={0}", contactid);
            if (DbManager.ExceSQL(strsql))
                Response.Write("<script>alert('删除成功')</script>");
            DataList1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string strsql;
            //是否将本地址设置为默认地址
            if (chkDefault.Checked)
            {
                //取消所有地址的默认设置；
                strsql = string.Format("update contact set DefaultValue=0 where MemberId={0}", Session["userid"]);
                DbManager.ExceSQL(strsql);
                //配置SQL语句－修改记录
                strsql = string.Format("insert into contact values({0},'{1}','{2}','{3}','{4}',1)", Session["userid"], txtAddrssee.Text, txtAddress.Text, txtPhone.Text, txtZip.Text);

            }
            else
            {
                //配置SQL语句－添加记录
                strsql = string.Format("insert into contact values({0},'{1}','{2}','{3}','{4}',0)", Session["userid"], txtAddrssee.Text, txtAddress.Text, txtPhone.Text, txtZip.Text);

            }
            //执行添加命令
            if (DbManager.ExceSQL(strsql))

                Response.Write("<script>alert('添加成功。')</script>");

            DataList1.DataBind();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

        }
    }
}