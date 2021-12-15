using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tarifler where TarifID = @p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[5].ToString();
                    TextBox5.Text = dr[6].ToString();
                }

                bgl.baglanti().Close();
               
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Durum güncelleme işlemi
            SqlCommand komut1 = new SqlCommand("Update Tarifler set TarifDurum=1 where TarifID=@p", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p", id);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği Ana sayfaya ekleme

            SqlCommand komut3 = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriID) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}