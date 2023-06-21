using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Resources_create : System.Web.UI.Page
{
    DO mydo = new DO();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack) { bindtoGridView1(); }
    }

    protected void bindtoGridView1() { }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String sql = "insert into resources (re_title,re_href) " +
            "values('" + titl.Text.Trim() + "','" + r_href.Text.Trim() + "')";
        if (mydo.crud_sql(sql))
        {
            Response.Write("<script>alert('添加成功')</script>");
            titl.Text = ""; r_href.Text = ""; 
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Resources.aspx", true);
    }
}