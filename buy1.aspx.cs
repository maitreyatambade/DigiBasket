using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class buy1 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["email_id"].ToString();
    }
     protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        int q1, q2;
        q1 = int.Parse(TextBox2.Text);
        q2 = int.Parse(TextBox3.Text);

        if (q1 > q2)
        {
            Label3.Text = "Enter Qty less than available qty";

        }
        else
        {
            double amt;

            amt = double.Parse(TextBox1.Text) * double.Parse(TextBox2.Text);
            TextBox4.Text = amt.ToString();

        }
    }
     protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
     {
         SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

         {
             cn.Open();
             SqlCommand cmd = new SqlCommand("Select * from ProductMst1 where ProdId =@prodid", cn);
             cmd.Parameters.AddWithValue("@prodid", DropDownList1.SelectedItem.Value);
             SqlDataReader dr = cmd.ExecuteReader();
             if (dr.Read())
             {
                 TextBox1.Text = dr["Rate"].ToString();
                 TextBox3.Text = dr["Qty"].ToString();
             }
         }

     }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("insert into ordernow (ProdName,Rate,Qty,Amt,Address,Uname)values(@pnm,@prate,@pqty,@amt,@address,@unm)", cn);
        da.SelectCommand.Parameters.AddWithValue("@unm", Session["email_id"].ToString());
        da.SelectCommand.Parameters.AddWithValue("@pnm", DropDownList1.SelectedItem.Text);
        da.SelectCommand.Parameters.AddWithValue("@prate", TextBox1.Text);
        da.SelectCommand.Parameters.AddWithValue("@pqty", TextBox2.Text);
        da.SelectCommand.Parameters.AddWithValue("@amt", TextBox4.Text);
        da.SelectCommand.Parameters.AddWithValue("@address", TextBox5.Text);
        DataSet1 ds = new DataSet1();

        da.Fill(ds);



        int newQty;
        newQty = int.Parse(TextBox3.Text) - int.Parse(TextBox2.Text);
        SqlDataAdapter da1 = new SqlDataAdapter("Update ProductMst1 set Qty=@nqty where ProdName=@pnm", cn);
        da1.SelectCommand.Parameters.AddWithValue("@pnm", DropDownList1.SelectedItem.Value);
        da1.SelectCommand.Parameters.AddWithValue("@nqty", newQty);
        DataSet ds1 = new DataSet();
        //DataSet1 ds1 = new DataSet1();

        da.Fill(ds1);

        Response.Write("<script> alert('Product order successfully')</script>");
    }
   
    }