using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Forget_Password : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.Connection = cn;
        cmd.CommandText = "select password from new_user where email_id=@email_id and squestion=@squestion and sanswer=@sanswer";
        cmd.Parameters.AddWithValue("@email_id",TextBox1.Text);
        cmd.Parameters.AddWithValue("@squestion",ddsquestion.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@sanswer",TextBox2.Text);
        cn.Open();

        string pass = Convert.ToString(cmd.ExecuteScalar());
        if (pass == "")
        {
            lblmsg.Text = "Wrong data";
        }
        else
        {
            lblmsg.Text = pass;
        }
        cmd.Dispose();
        cn.Close();
    }
}