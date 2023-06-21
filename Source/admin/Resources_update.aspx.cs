using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class admin_Resources_update : System.Web.UI.Page
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

        string id = Request.QueryString["re_id"].ToString();
        string sql = "select * from resources where re_id=" + id;
        OleDbDataReader dr = mydo.row(sql);
        if (dr.Read())
        {

            titl.Text = dr["re_title"].ToString();
            r_href.Text = dr["re_href"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["re_id"].ToString();
        String sql = "update  resources set re_title='" + titl.Text.Trim() + "',re_href='" + r_href.Text.Trim() + "' where re_id=" + id;
        if (mydo.crud_sql(sql))
        {
            Response.Write("<script>alert('修改成功');window.location.href='Resources.aspx'</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Resources.aspx", true);
    }
}