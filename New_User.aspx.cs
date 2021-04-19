using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class New_User : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.Connection = cn;
        cmd.CommandText = "insert into new_user values(@email_id,@password,@squestion,@sanswer,@address,@mobile)";
        cmd.Parameters.AddWithValue("@email_id",txtemail.Text);
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
        cmd.Parameters.AddWithValue("@squestion",ddsqusetion.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@sanswer", txtanswer.Text);
        cmd.Parameters.AddWithValue("@address", txtadd.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmob.Text);

        cn.Open();
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            lblmsg.Text = "Data Saved";
            txtadd.Text = "";
            txtanswer.Text = "";
            txtemail.Text = "";
            txtmob.Text = "";
            txtpass.Text = "";
            txtpass2.Text = "";
            Response.Redirect("index.aspx");
        }
        else
        {

        }
        cmd.Dispose();
        cn.Close();

    }
}