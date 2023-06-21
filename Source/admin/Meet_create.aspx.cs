using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Meet_create : System.Web.UI.Page
{
    DO mydo = new DO();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack) { bindtoGridView1(); }
    }

    protected void bindtoGridView1() { }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String sql = "insert into meeting (meet_title,meet_writer,meet_data,meet_time,meet_address) " +
            "values('" + titl.Text.Trim() + "','" + writer.Text.Trim() + "','" + content1.InnerText + "','" + me_time.Text.Trim() + "','" + me_add.Text.Trim() + "')";
        if (mydo.crud_sql(sql))
        {
            Response.Write("<script>alert('添加成功')</script>");
            titl.Text = ""; writer.Text = ""; content1.InnerText = "";
            me_time.Text = ""; me_add.Text = "";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Meet.aspx", true);
    }
}