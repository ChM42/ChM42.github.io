using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class admin_Admin_update : System.Web.UI.Page
{
    DO mydo = new DO();
    protected void Page_Load(object sender, EventArgs e)
    {
        username.Text = Session["admin_name"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (pwd1.Text == "")
        {
            Response.Write("<script>alert('没有输入密码');</script>");
            return;
        }
        else if (pwd2.Text == "")
        {
            Response.Write("<script>alert('没有输入确认密码');</script>");
            return;
        }
        if (Page.IsValid)
        {
            
                string sql1 = "update admins set admin_pwd='" + pwd1.Text.Trim() + "' where admin_id='" + username.Text.Trim() + "' ";
            if (mydo.crud_sql(sql1))
            {
                Response.Write("<script>alert('修改密码成功，请您重新登录')</script>");
                pwd1.Text = pwd2.Text = "";
                }
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        pwd1.Text = "";
        pwd2.Text = "";
    }
}