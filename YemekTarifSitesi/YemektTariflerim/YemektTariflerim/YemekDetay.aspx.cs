using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string YemekID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            YemekID = Request.QueryString["YemekID"]; //form yüklendiği zaman ana sayfadan taşınan ıd değeri gelir. 

            SqlCommand komut = new SqlCommand("Select YemekAd From Yemekler where YemekID=@p1", bgl.baglanti());
           
            komut.Parameters.AddWithValue("@p1", YemekID);
            SqlDataReader dr = komut.ExecuteReader();


            while (dr.Read()) //okuma işlemi olduğu sürece dr den gelen 0.parametredeki değeri(yemekad) label3e yaz.
            {
                Label3.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //Yorumları Listeleme

            SqlCommand komut2 = new SqlCommand("Select * From Yorumlar where YemekID=@p2", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", YemekID);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("Insert into Yorumlar(YorumAdSoyad,YorumMail,YorumIcerik,YemekID) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut3.Parameters.AddWithValue("@p4", YemekID);
            komut3.ExecuteNonQuery(); //sorgu gerçekleştiriliyor.
            bgl.baglanti().Close();

        }
    }
}