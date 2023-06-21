using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Users_Stud_Recources_download : System.Web.UI.Page
{
    DO mydo = new DO();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindtorepeater1();
        }
    }
    protected void bindtorepeater1()
    {

        int currentpage = Convert.ToInt32(current_page.Text);//保存当前页码。
        PagedDataSource ps = new PagedDataSource();//初始化PagedDataSource新实例。
        if (1 == 1)
        {
            string sql1 = "select * from resources order by re_id ";
            ps.DataSource = mydo.rows(sql1, "ck").DefaultView;
        }
        ps.AllowPaging = true;
        ps.PageSize = 15;//一页显示的项数。
        ps.CurrentPageIndex = currentpage - 1;//索引
        first_page.Enabled = true; front_page.Enabled = true; next_page.Enabled = true; last_page.Enabled = true;
        if (currentpage == 1) { first_page.Enabled = false; front_page.Enabled = false; }
        if (currentpage == ps.PageCount) { next_page.Enabled = false; last_page.Enabled = false; }
        count_page.Text = Convert.ToString(ps.PageCount);//总页码
        Repeater1.DataSource = ps;
        Repeater1.DataBind();
    }

    protected void first_page_Click(object sender, EventArgs e)
    {
        current_page.Text = "1";
        bindtorepeater1();
    }

    protected void front_page_Click(object sender, EventArgs e)
    {
        current_page.Text = Convert.ToString(Convert.ToInt32(current_page.Text) - 1);
        bindtorepeater1();
    }

    protected void next_page_Click(object sender, EventArgs e)
    {
        current_page.Text = Convert.ToString(Convert.ToInt32(current_page.Text) + 1);
        bindtorepeater1();
    }

    protected void last_page_Click(object sender, EventArgs e)
    {
        current_page.Text = count_page.Text;
        bindtorepeater1();
    }
}