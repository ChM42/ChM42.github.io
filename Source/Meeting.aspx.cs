using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class Meeting : System.Web.UI.Page
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
        String id = Request.QueryString["meet_id"].ToString();

        string sql = "select * from meeting where meet_id=" + id;
        string sql1 = "update meeting set meet_cnt=meet_cnt+1 where meet_id=" + id;

        if (mydo.crud_sql(sql1))
        {
            Repeater2.DataSource = mydo.rows(sql, "ck").DefaultView;
            Repeater2.DataBind();
        }
    }
}