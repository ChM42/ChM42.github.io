using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class admin_Users_Stud_Users_messages : System.Web.UI.Page
{
    DO mydo =new DO();
    protected void Page_Load(object sender, EventArgs e)
    {
        useruser.Text = Session["users_name"].ToString();
        bindtomeeting();
    }
    protected void bindtomeeting()
    {
        string sql = "select  * from users where user_user= '" + useruser.Text.Trim() + "'";
        OleDbDataReader dr = mydo.row(sql);
        if (dr.Read())
        {
            username.Text = dr["user_name"].ToString();
            userinfo.Text = dr["user_infor"].ToString();
            usersex.Text = dr["user_sex"].ToString();

        }
    }
}