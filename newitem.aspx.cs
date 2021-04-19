using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient; 

public partial class newitem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
            string ProdImg = "~/Upload/" + str.ToString();
            string ProdName = txtnm.Text;
            string CatId = DropDownList1.SelectedItem.Text;
            string Qty = txtqty.Text;
            string Rate = txtrate.Text;


            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("insert into ProductMst1 values(@ProdName,@CatId,@ProdImg,@Qty,@Rate)", con);
            cmd.Parameters.AddWithValue("@ProdName", ProdName);
            cmd.Parameters.AddWithValue("@CatId", CatId);
            cmd.Parameters.AddWithValue("ProdImg", ProdImg);
            cmd.Parameters.AddWithValue("@Qty", Qty);
            cmd.Parameters.AddWithValue("@Rate", Rate);
            



            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblmsg.Text = "Product Uploaded";
            txtnm.Text = "";
            txtqty.Text = "";
            txtrate.Text = "";
            lblmsg.ForeColor = System.Drawing.Color.ForestGreen;

        }

        else
        {
            lblmsg.Text = "Please Upload your Image";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }  
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}