using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["email_id"].ToString();

    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton9_Click1(object sender, EventArgs e)
    {

    }
}
