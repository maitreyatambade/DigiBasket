using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GiveFeedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["email_id"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
     
        SqlDataAdapter da =new SqlDataAdapter("insert into feedback (us,feedback)values(@user,@feedback)",cn);
        da.SelectCommand.Parameters.AddWithValue("@user", Session["email_id"].ToString());
        da.SelectCommand.Parameters.AddWithValue("@feedback", TextBox1.Text);
        DataSet1 ds = new DataSet1();


        da.Fill(ds);
        
       // cn.Close();
    }
}