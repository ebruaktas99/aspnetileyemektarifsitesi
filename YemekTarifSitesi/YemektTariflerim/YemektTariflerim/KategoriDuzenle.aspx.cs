using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class KategoriDetayAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        String id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriID"]; //diğer formdan taşınan değeri id ye atadık.

            if (Page.IsPostBack == false) //Güncelleme işleminde, sayfayı bir kere güncellemek için
            {
                SqlCommand komut = new SqlCommand("Select * from Kategoriler where KategoriID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read()) //veritabanındaki değerleri güncelleme sayfasında txtlere yazdırır.
                {
                    TextBox1.Text = dr[1].ToString(); //kategoriadı
                    TextBox2.Text = dr[2].ToString(); //Kategoriadet
                }
               
                bgl.baglanti().Close();
            }
         
        }

        protected void btnkategoriguncelle_Click1(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("Update Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where KategoriID=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);


            komut.ExecuteNonQuery();
            bgl.baglanti().Close();



        }
    }
}