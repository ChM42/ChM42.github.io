using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Meeting_list : System.Web.UI.Page
{
    DO mydo = new DO();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindtorepeater2();
        }
    }
    protected void bindtorepeater2()
    {
        int currentpage = Convert.ToInt32(current_page.Text);//保存当前页码。
        PagedDataSource ps = new PagedDataSource();//初始化PagedDataSource新实例。
        string sql = "select * from meeting where nav_id= 8 order by meet_time desc";
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
}