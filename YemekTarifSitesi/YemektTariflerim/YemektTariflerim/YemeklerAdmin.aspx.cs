using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class YemeklerAdmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //yemek silme işlemi

            id = Request.QueryString["YemekID"];
            islem = Request.QueryString["islem"];


            Panel2.Visible = false;
            Panel4.Visible = false;

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


            //Yemek listesi kodları
            SqlCommand komut = new SqlCommand("Select * from Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();


            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete from Yemekler where YemekID=@p1", bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1",id);
                komut2.ExecuteNonQuery();
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
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnekleyemek_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Yemekler(YemekAd,YemekMalzeme,YemekTarif,KategoriID) values (@p1,@p2,@p3,@p4) ", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);//dropdowndan seçilen değeri getirir.

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Veritabanında kategori Sayısını artırma
            SqlCommand komut2 = new SqlCommand("update Kategoriler set KategoriAdet= KategoriAdet + 1 where KategoriID=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);

            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}