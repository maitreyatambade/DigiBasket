using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into new_user (email_id,password)values('" + txtemail.Text + "','" + txtpass.Text + "')", cn);
        
        cmd.Connection = cn;
        cmd.CommandText = "select * from new_user  where @email_id=email_id and @password=password";
        cmd.Parameters.AddWithValue("@email_id", txtemail.Text);
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
        cn.Open();
        string chk = (Convert.ToString(cmd.ExecuteScalar()));
        if (chk == "")
        {
            lblmsg.Text = "User Id and password is Not Correct";
        }
        else
        {
            Session["email_id"] = txtemail.Text;
            Response.Redirect("Default.aspx");
        }
        cmd.ExecuteNonQuery();
     
        //cmd = new SqlCommand("insert into new_user (email_id,password)values(' " +txtemail.Text+ "','" + txtpass.Text + "')", cn);

        cmd.Dispose();
        cn.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
    }
}