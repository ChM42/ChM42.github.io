using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class admin_Users : System.Web.UI.Page
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
            string sql1 = "select * from users order by user_id ";
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

    protected string value;


    protected void Button1_Click(object sender, EventArgs e)
    {
        value = Request.Form["ckbName"];
        value = value + ",0";

        string[] sArray = value.Split(',');
        if (sArray[0].ToString() != "")
        {
            string sql = "select * from users where user_id=" + sArray[0].ToString();
            OleDbDataReader dr = mydo.row(sql);
            if (dr.Read())
            {

                Response.Write("<script>window.location.href='Users_update.aspx?user_id=" + sArray[0].ToString() + "'</script>");

            }
        }

        else
        {
            Response.Write("<script>window.alert('请选择一个文档');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        value = Request.Form["ckbName"];
        value = value + ",0";

        string[] sArray = value.Split(',');

        int i = 0;
        if (sArray[i].ToString() != "")
        {
            String id = sArray[i].ToString();
            string sql = "delete from users where user_id=" + id;
            if (mydo.crud_sql(sql))
            {
                i++; Response.Write("<script>alert('删除成功');window.location.href='Users.aspx'</script>");
            }
        }
        else
        {
            Response.Write("<script>window.alert('请选择一个文档');</script>");
        }
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