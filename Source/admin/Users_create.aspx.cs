using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class admin_Users_create : System.Web.UI.Page
{
    DO mydo = new DO();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (useruser.Text == "")
        {
            Response.Write("<script>window.alert('没有输入用户名');</script>");
            return;
        }

        else if (pwd1.Text == "")
        {
            Response.Write("<script>alert('没有输入密码');</script>");
            return;
        }
        else if (pwd2.Text == "")
        {
            Response.Write("<script>alert('没有输入确认密码');</script>");
            return;
        }
        else if (username.Text == "")
        {
            Response.Write("<script>alert('没有输入姓名');</script>");
            return;
        }
        else if (usersex.Text == "")
        {
            Response.Write("<script>alert('没有输入性别');</script>");
            return;
        }
        if (Page.IsValid)
        {
            String sql = "select * from users where user_user= '" + useruser.Text + "'";
            OleDbDataReader dr = mydo.row(sql);
            if (dr.Read())
            {
                Response.Write("<script>alert('该用户已存在')</script>");
                username.Text = pwd1.Text = pwd2.Text = useruser.Text = usersex.Text = "";
                content1.InnerText = "";
            }
            else
            {
                string sql1 = "insert into users (user_user,user_name,user_sex,user_pwd,user_infor) " +
            "values('" + useruser.Text + "','" + username.Text + "','" + usersex.Text + "','" + pwd1.Text + "','" + content1.InnerText + "')";
                if (mydo.crud_sql(sql1))
                {
                    Response.Write("<script>alert('添加成功')</script>");
                    username.Text = pwd1.Text = pwd2.Text = useruser.Text = usersex.Text = "";
                    content1.InnerText = "";
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        username.Text = pwd1.Text = pwd2.Text = useruser.Text = usersex.Text = "";
        content1.InnerText = "";
    }
}