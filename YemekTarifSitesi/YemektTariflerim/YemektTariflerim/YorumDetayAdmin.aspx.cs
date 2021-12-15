using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class YorumDetayAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //OLMADII

            id = Request.QueryString["YorumID"]; //diğer formdan taşınan değer

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select YorumAdSoyad, YorumMail, YorumIcerik,YemekAd From Yorumlar inner join Yemekler on Yorumlar.YemekID = Yemekler.YemekID where YorumID= @p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);

                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read()) //veritabanından yorum detaylarını alıyoruz.
                {
                    txtAd.Text = dr[0].ToString();
                    txtMail.Text = dr[1].ToString();
                    txtIcerik.Text = dr[2].ToString();
                    txtYemek.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }



        }

        protected void YorumOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Yorumlar set YorumIcerik=@p1, YorumOnay=@p2 where YorumID=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtIcerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}