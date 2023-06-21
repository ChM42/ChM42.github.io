using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Stud_Click(object sender, EventArgs e)
    {
        Response.Redirect("./admin/Login_Stud.aspx", true);
    }

    protected void Admin_Click(object sender, EventArgs e)
    {
        Response.Redirect("./admin/Login_Admin.aspx", true);
    }
}
