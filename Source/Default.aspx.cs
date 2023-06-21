using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    DO mydo = new DO();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bindtorepeater1();
            bindtorepeater2();
            bindtorepeater3();
            bindtorepeater4();
            bindtomeeting();
        }
    }
    protected void bindtorepeater1()
    {
        string sql = "select top 7 * from mess where navi_id=7 order by mess_time desc";
        Repeater1.DataSource = mydo.rows(sql, "ck").DefaultView;
        Repeater1.DataBind();
    }
    protected void bindtorepeater2()
    {
        string sql = "select top 7 * from mess where navi_id=8 order by mess_time desc";
        Repeater2.DataSource = mydo.rows(sql, "ck").DefaultView;
        Repeater2.DataBind();
    }
    protected void bindtorepeater3()
    {
        string sql = "select top 5 * from mess where navi_id=19 order by mess_time desc";
        Repeater3.DataSource = mydo.rows(sql, "ck").DefaultView;
        Repeater3.DataBind();
    }
    protected void bindtorepeater4()
    {
        string sql = "select top 5 * from mess where navi_id=12 order by mess_time desc";
        Repeater4.DataSource = mydo.rows(sql, "ck").DefaultView;
        Repeater4.DataBind();
    }
    protected void bindtomeeting()
    {
        string sql = "select top 1 * from meeting  order by meet_id desc";
        OleDbDataReader dr = mydo.row(sql);
        if (dr.Read())
        {
            int id = (int)dr["meet_id"]-1;
            l_tit.Text = dr["meet_title"].ToString();
            l_writer.Text = dr["meet_writer"].ToString();
            l_time.Text = dr["meet_time"].ToString();
            string sqlm = "select * from meeting where meet_id= "+ id ;
            OleDbDataReader drm = mydo.row(sqlm);
            if (drm.Read())
            {
                int idm = (int)drm["meet_id"]-1;
                m_tit.Text = drm["meet_title"].ToString();
                m_writer.Text = drm["meet_writer"].ToString();
                m_time.Text = drm["meet_time"].ToString();
                string sqlr = "select * from meeting where meet_id= " + idm ;
                OleDbDataReader drr = mydo.row(sqlm);
                if (drr.Read())
                {
                    r_tit.Text = drr["meet_title"].ToString();
                    r_writer.Text = drr["meet_writer"].ToString();
                    r_time.Text = drr["meet_time"].ToString();

                }
            }

        }
    }

}