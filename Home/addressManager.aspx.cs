﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.App_Code;

namespace Eshop.Home
{
    public partial class addressManager : System.Web.UI.Page
    {
        handlerLayer handler = new handlerLayer();

        private void ListInit()
        {
            addressLists.DataSource = handler.getAddressData(Session["userID"].ToString());
            addressLists.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListInit();
            }
        }

        private void clearVaule()
        {
            name.Value = "";
            phone.Value = "";
            zip.Value = "";
            addressDetail.Value = "";
        }
        protected void saveInfo_Click(object sender, EventArgs e)
        {
            Contact contact = new Contact();
            contact.name = name.Value;
            contact.memberID = Session["userID"].ToString();
            string address = province.Value + city.Value + district.Value;
            contact.province = province.Value;
            contact.city = city.Value;
            contact.area = district.Value;
            contact.detailAddress = addressDetail.Value;
            contact.address = address;
            contact.phone = phone.Value;
            contact.zip = zip.Value;
            if (customCheck1.Checked)
            {
                contact.defaultAddress = 1;
            }
            if (handler.addContact(contact))
            {
                clearVaule();
                ListInit();
                //this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", " <script>closeModel();</script> ");
            }
            else
            {
                Response.Write("<script>alert('添加失败！');</script>");
            }
        }

        protected void delete_Command(object sender, CommandEventArgs e)
        {
            if (!handler.deleteContact(e.CommandArgument.ToString()))
                Response.Write("<script>alert('删除失败！');</script>");
            else
                ListInit();
        }

        protected void modify_address_Command(object sender, CommandEventArgs e)
        {
            title.InnerText = "修改收货地址";
            Contact contact = handler.getContact(e.CommandArgument.ToString());
            name.Value = contact.name;
            phone.Value = contact.phone;
            addressDetail.Value = contact.detailAddress;
            zip.Value = contact.zip;
            contactID.Text = e.CommandArgument.ToString();
            if (contact.defaultAddress == 1)
            {
                customCheck1.Checked = true;
            }
            else
            {
                customCheck1.Checked = false;
            }
            this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", " <script>   window.onload=function(){    closeModel();   }   </script> ");
        }

        protected void save_modifyInfo_Click(object sender, EventArgs e)
        {
            Contact contact = new Contact();
            contact.name = name.Value;
            contact.memberID = Session["userID"].ToString();
            string address = province.Value + city.Value + district.Value;
            contact.province = province.Value;
            contact.city = city.Value;
            contact.area = district.Value;
            contact.detailAddress = addressDetail.Value;
            contact.address = address;
            contact.phone = phone.Value;
            contact.zip = zip.Value;
            if (customCheck1.Checked)
            {
                contact.defaultAddress = 1;
            }
            if (handler.modifyContact(contact,contactID.Text))
            {
                ListInit();
            }
            else
            {
                Response.Write("<script>alert('修改失败！');</script>");
            }
        }
    }
}