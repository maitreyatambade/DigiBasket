using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BuyFruits : System.Web.UI.Page
{
    String cs;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Session["email_id"].ToString();

    }
    
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from ProductMst1 where ProdId =@prodid", con);
            cmd.Parameters.AddWithValue("@prodid",DropDownList1.SelectedItem.Value);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox2.Text = dr["Rate"].ToString();
                //TxtDis.Text = dr["Discount"].ToString();
                TextBox5.Text = dr["Qty"].ToString();
            }

        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        int q1, q2;
        q1 = int.Parse(TextBox1.Text);
        q2 = int.Parse(TextBox5.Text);

        if (q1 > q2)
        {
            Label2.Text = "Please enter qty less than" + TextBox5.Text;
        }
        else
        {
            double amt;

            amt = double.Parse(TextBox1.Text) * double.Parse(TextBox2.Text);
            ////dis = Convert.ToDouble(TxtDis.Text);
            //famt = amt - (amt * dis / 100);

            TextBox3.Text = amt.ToString();
            //TxtFamt.Text = famt.ToString();
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        { 
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
                   con.Open();
            SqlCommand cmd = new SqlCommand("insert into ordernow(ProdName,Rate,Qty,Amt,Address,Uname)values(@prdnm,@rate,@qty,@amt,@add,@unm)", con);
            // cmd.Parameters.AddWithValue("@prodid",DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@prdnm", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@rate", TextBox2);
            cmd.Parameters.AddWithValue("@qty", TextBox1);
            cmd.Parameters.AddWithValue("@add", TextBox4.Text);
            // cmd.Parameters.AddWithValue("@date", System.DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@unm", Session["email_id"].ToString());
            //cmd.Parameters.AddWithValue("@discgiv", TxtDis.Text);
            //cmd.Parameters.AddWithValue("@totamt", TxtFamt.Text);
            cmd.Parameters.AddWithValue("@amt", TextBox3.Text);

            cmd.ExecuteNonQuery();


            int newQty;
            newQty = int.Parse(TextBox5.Text) - int.Parse(TextBox1.Text);
            SqlCommand cmd1 = new SqlCommand("Update ProductMst1 set Qty=@nqty where ProdName=@prdnm", con);
            cmd1.Parameters.AddWithValue("@prdnm", DropDownList1.SelectedItem.Value);
            cmd1.Parameters.AddWithValue("@nqty", newQty);
            cmd1.ExecuteNonQuery();
            Response.Write("<script> alert('Product order successfully')</script>");
            con.Close();

        }
    }
}
