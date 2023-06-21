using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class Second_list : System.Web.UI.Page
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
        String id = Request.QueryString["navi_id"].ToString();
        string sql = "select * from navi where navi_id=" + id;
        OleDbDataReader dr = mydo.row(sql);
       if (dr.Read())
        {
            Label3.Text = dr["navi_nav"].ToString();
        }
    }
    protected void bindtorepeater1()
    {
        String id = Request.QueryString["nav_id"].ToString();

        string sql = "select * from navi where nav_id=" + id;
        Repeater1.DataSource = mydo.rows(sql, "ck").DefaultView;
        Repeater1.DataBind();
        if (id == "1") Label1.Text  = Label2.Text = "学院概况";
        else if (id == "2") Label1.Text = Label2.Text = "机构设置";
        else if (id == "3") Label1.Text = Label2.Text = "通知公告";
        else if (id == "4") Label1.Text = Label2.Text = "师资队伍";
        else if (id == "5") Label1.Text = Label2.Text = "人才培养";
        else if (id == "6") Label1.Text = Label2.Text = "科学研究";
        else if (id == "7") Label1.Text = Label2.Text = "招生就业";
    }
    protected void bindtorepeater2()
    {
        int currentpage = Convert.ToInt32(current_page.Text);//保存当前页码。
        PagedDataSource ps = new PagedDataSource();//初始化PagedDataSource新实例。
        String id = Request.QueryString["navi_id"].ToString();
        string sql = "select * from mess where navi_id=" + id + " order by mess_time desc";
        ps.DataSource = mydo.rows(sql, "ck").DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 5;//一页显示的项数。
        ps.CurrentPageIndex = currentpage - 1;//索引
        first_page.Enabled = true; front_page.Enabled = true; next_page.Enabled = true; last_page.Enabled = true;
        if (currentpage == 1) { first_page.Enabled = false; front_page.Enabled = false; }
        if (currentpage == ps.PageCount) { next_page.Enabled = false; last_page.Enabled = false; }
        count_page.Text = Convert.ToString(ps.PageCount);//总页码
        Repeater2.DataSource = ps;
        Repeater2.DataBind();
    }
    protected void first_page_Click(object sender, EventArgs e)
    {
        current_page.Text = "1";
        bindtorepeater2();
    }

    protected void front_page_Click(object sender, EventArgs e)
    {
        current_page.Text = Convert.ToString(Convert.ToInt32(current_page.Text) - 1);
        bindtorepeater2();
    }

    protected void next_page_Click(object sender, EventArgs e)
    {
        current_page.Text = Convert.ToString(Convert.ToInt32(current_page.Text) + 1);
        bindtorepeater2();
    }

    protected void last_page_Click(object sender, EventArgs e)
    {
        current_page.Text = count_page.Text;
        bindtorepeater2();
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