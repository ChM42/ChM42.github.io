using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class admin_Login_Stud : System.Web.UI.Page
{
    DO mydo = new DO();
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["CheckCode"].ToString() == TextBox1.Text)
        {
            if (username.Text == "")
            {
                Response.Write("<script>window.alert('没有输入用户名');</script>");
                return;
            }

            else if (pwd.Text == "")
            {
                Response.Write("<script>alert('没有输入密码');</script>");
                return;
            }
            string sql = "select * from users where user_user= '" + username.Text.Trim() + "' and user_pwd= '" + pwd.Text.Trim() + "'";
            // 这句话创建一个指令
            OleDbDataReader dr = mydo.row(sql);//指令传给reader

            // 这句执行它

            if (dr.Read())
            {
                Response.Write("<script>alert('登录成功');</script>");
                Session["users_name"] = username.Text;
                Response.Redirect("./Users_Stud/index.aspx", true);
            }
            else//最讨厌的就是一个网页告诉我用户名或者密码错误，但是不告诉我到底是哪个
            {
                //这里本来不知道要写的，但是下面再次调用出现了小问题，就加上。最好用完就关掉
                string sql1 = "SELECT * FROM users where user_user = '" + username.Text.Trim() + "'";
                dr = mydo.row(sql1);//指令传给reader
                if (dr.Read())
                    Response.Write("<script>alert('密码错误');</script>");
                else
                    Response.Write("<script>alert('用户名不存在');</script>");

                username.Text = "";
                pwd.Text = "";
            }
        }
        else
        {
            Response.Write("<script>alert('验证码错误');window.location.href='Login_Stud.aspx'</script>");
        }
    }
}