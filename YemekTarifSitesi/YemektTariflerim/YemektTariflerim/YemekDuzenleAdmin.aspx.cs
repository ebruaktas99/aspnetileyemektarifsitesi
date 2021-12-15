using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class YemekDuzenleAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        String id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekID"]; //diğer formdan taşınan değeri id ye atadık.

            if (Page.IsPostBack == false) //Güncelleme işleminde, sayfayı bir kere güncellemek için
            {
                SqlCommand komut = new SqlCommand("Select * from Yemekler where YemekID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);

                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read()) //veritabanındaki değerleri güncelleme sayfasında txtlere yazdırır.
                {
                    TextBox1.Text = dr[1].ToString(); //yemekiadı
                    TextBox2.Text = dr[2].ToString(); //yemekmalzeme
                    TextBox3.Text = dr[3].ToString(); //yemektarif
                    DropDownList1.Text = dr[7].ToString();
                }

                bgl.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    //Kategori listesi çekmek için 

                    SqlCommand komut2 = new SqlCommand("Select * From Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    //dropdown içinde gözükecek alan: datatextfield
                    DropDownList1.DataTextField = "KategoriAd";

                    //dropdown da kategorinin arka planında çalışır.Yani kategoriıd tutar.
                    DropDownList1.DataValueField = "KategoriID";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }

            }


        }

        protected void yemekguncelle_Click(object sender, EventArgs e)
        { //Yemek Ekleme
            SqlCommand komut = new SqlCommand("Update Yemekler set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3,KAtegoriID=@p4 where YemekID=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        protected void gnnyemegiayarla_Click(object sender, EventArgs e)
        {
            //Adım 1 : Bütün yemeklerin durumunu 0 olarak ayarla.
            SqlCommand komut2 = new SqlCommand("update Yemekler set Durum=0", bgl.baglanti()); 
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Adım 2 : Günün yemeği için ID ye göre durumu true yapalım.
            SqlCommand komut3 = new SqlCommand("update Yemekler set Durum=1 where YemekID=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", id);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}