using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class admin_Users_update : System.Web.UI.Page
{
    DO mydo = new DO();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindtodata();
        }
    }
    protected void bindtodata()
    {

        string id = Request.QueryString["user_id"].ToString();
        string sql = "select * from users where user_id=" + id;
        OleDbDataReader dr = mydo.row(sql);
        if (dr.Read())
        {

            useruser.Text = dr["user_user"].ToString();
            username.Text = dr["user_name"].ToString();
            content1.InnerText = dr["user_infor"].ToString();
            usersex.Text = dr["user_sex"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["user_id"].ToString();
        String sql = "update  users set user_infor='" + content1.InnerText + "' where user_id=" + id;
        if (mydo.crud_sql(sql))
        {
            Response.Write("<script>alert('修改成功');window.location.href='Users.aspx'</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Users.aspx", true);
    }
}