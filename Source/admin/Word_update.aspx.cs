using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class admin_Word_update : System.Web.UI.Page
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

        string id = Request.QueryString["mess_id"].ToString();
        string sql = "select * from mess where mess_id=" + id;
        OleDbDataReader dr = mydo.row(sql);
        if (dr.Read())
        {

            titl.Text = dr["mess_title"].ToString();
            writer.Text = dr["mess_writer"].ToString();
            content1.InnerText = dr["mess_data"].ToString();
            nava.SelectedIndex = (int)dr["nav_id"] - 1;
            nav1.SelectedIndex = (int)dr["navi_id"] - 1;

        }
        dr.Close();
    }
    protected void nava_SelectedIndexChanged(object sender, EventArgs e)
    {
        String sql = "select * from navi where nav_nav= '" + nava.SelectedItem + "'";

        nav1.DataSource = mydo.rows(sql, "ck").DefaultView;
        nav1.DataTextField = "navi_nav";
        nav1.DataValueField = "navi_id";
        nav1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["mess_id"].ToString();
        String sql = "update  mess set mess_title='" + titl.Text.Trim() + "',mess_writer='" + writer.Text.Trim() + "',mess_data='" + content1.InnerText + "',nav_id=" + nava.SelectedValue + ",navi_id=" + nav1.SelectedValue + " where mess_id=" + id;
        if (mydo.crud_sql(sql))
        {
            Response.Write("<script>alert('修改成功');window.location.href='Word.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('请重新修改');window.location.href='Word.aspx'</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Word.aspx", true);
    }
}