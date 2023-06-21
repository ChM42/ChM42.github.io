using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class Detail : System.Web.UI.Page
{
    DO mydo = new DO();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindtorepeater1();
            bindtorepeater2();
            bindto();
        }
    }
    protected void bindto()
    {
        String id = Request.QueryString["mess_id"].ToString();
        string sql = "select * from mess where mess_id=" + id;

        OleDbDataReader dr = mydo.row(sql);
        if (dr.Read())
        {
            String navid =dr["navi_id"].ToString();
            String sql2 = "select * from navi where navi_id=" + navid;
            OleDbDataReader dr2 = mydo.row(sql2);
            if (dr2.Read())
            {
                Label3.Text = dr2["navi_nav"].ToString();
            }
        }
    }
    protected void bindtorepeater2()
    {
        String id = Request.QueryString["mess_id"].ToString();

        string sql = "select * from mess where mess_id=" + id;
        string sql1 = "update mess set mess_cnt=mess_cnt+1 where mess_id=" + id;

        if (mydo.crud_sql(sql1))
        {
            Repeater2.DataSource = mydo.rows(sql, "ck").DefaultView;
            Repeater2.DataBind();
        }
    }
    protected void bindtorepeater1()
    {
        String id = Request.QueryString["nav_id"].ToString();

        string sql = "select * from navi where nav_id=" + id;
        Repeater1.DataSource = mydo.rows(sql, "ck").DefaultView;
        Repeater1.DataBind();
        if (id == "1") Label1.Text = Label2.Text = "学院概况";
        else if (id == "2") Label1.Text = Label2.Text = "机构设置";
        else if (id == "3") Label1.Text = Label2.Text = "通知公告";
        else if (id == "4") Label1.Text = Label2.Text = "师资队伍";
        else if (id == "5") Label1.Text = Label2.Text = "人才培养";
        else if (id == "6") Label1.Text = Label2.Text = "科学研究";
        else if (id == "7") Label1.Text = Label2.Text = "招生就业";
    }
    protected void nav_navga_Click(object sender, EventArgs e)
    {
        String id = Request.QueryString["nav_id"].ToString();
        string sql = "select * from navi where nav_id=" + id;
        OleDbDataReader dr = mydo.row(sql);
        if (dr.Read())
        {
            Response.Redirect("List.aspx?nav_id=" + id);
        }
    }
}