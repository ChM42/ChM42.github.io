using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Word_create : System.Web.UI.Page
{
    DO mydo = new DO();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack) { bindtoGridView1(); }
    }

    protected void bindtoGridView1() { }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String sql = "insert into mess(mess_title,mess_writer,mess_data,nav_id,navi_id) " +
            "values('" + titl.Text.Trim() + "','" + writer.Text.Trim() + "','" + content1.InnerText + "'," + nava.SelectedValue + "," + nav1.SelectedValue + ")";
        if (mydo.crud_sql(sql))
        {
            Response.Write("<script>alert('添加成功')</script>");
            titl.Text = ""; writer.Text = ""; content1.InnerText = "";
            nava.SelectedIndex = 0;
            nav1.SelectedIndex = 0;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Word.aspx", true);
    }
    protected void nava_SelectedIndexChanged(object sender, EventArgs e)
    {
        String sql = "select * from navi where nav_nav= '" + nava.SelectedItem + "'";

        nav1.DataSource = mydo.rows(sql, "ck").DefaultView;
        nav1.DataTextField = "navi_nav";
        nav1.DataValueField = "navi_id";
        nav1.DataBind();
    }


    protected void nav1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}