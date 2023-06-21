using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class admin_Meet_update : System.Web.UI.Page
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

        string id = Request.QueryString["meet_id"].ToString();
        string sql = "select * from meeting where meet_id=" + id;
        OleDbDataReader dr = mydo.row(sql);
        if (dr.Read())
        {

            titl.Text = dr["meet_title"].ToString();
            writer.Text = dr["meet_writer"].ToString();
            content1.InnerText = dr["meet_data"].ToString();
            me_time.Text = dr["meet_time"].ToString();
            me_add.Text = dr["meet_address"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["meet_id"].ToString();
        String sql = "update  meeting set meet_title='" + titl.Text.Trim() + "',meet_writer='" + writer.Text.Trim() + "',meet_data='" + content1.InnerText + "',meet_time='" + me_time.Text.Trim() + "',meet_address='" + me_add.Text.Trim() + "' where meet_id=" + id;
        if (mydo.crud_sql(sql))
        {
            Response.Write("<script>alert('修改成功');window.location.href='Meet.aspx'</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Meet.aspx", true);
    }
}