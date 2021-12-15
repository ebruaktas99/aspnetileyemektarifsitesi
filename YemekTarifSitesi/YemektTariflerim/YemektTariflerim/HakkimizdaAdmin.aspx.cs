using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) //butona her bastığında refresh olup güncelleme işleminin engellenmesini ortadan kaldrımak için.
            {
                Panel2.Visible = false;
                SqlCommand komut = new SqlCommand("Select * from Hakkimizda", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Update Hakkimizda set Metin=@p1", bgl.baglanti());

            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}