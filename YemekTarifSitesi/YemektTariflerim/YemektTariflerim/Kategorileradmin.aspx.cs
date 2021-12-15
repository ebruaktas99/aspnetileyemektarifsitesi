using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class Kategorileradmin : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        string islem = "";
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false) //tekrar aynı değer gelmesin diye
            { 
                id = Request.QueryString["KategoriID"];
                islem = Request.QueryString["islem"];

            }

            SqlCommand komut = new SqlCommand("Select * From Kategoriler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();


            //Silme işlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Kategoriler where KategoriID=@p1", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }


            Panel2.Visible = false; //ilk açıldığında kategoriler paneli görünmesin.
            Panel4.Visible = false;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true; // + tuşuna basınca kategoriler gözüksün


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false; // - tuşuna basınca kategoriler paneli kapansın.
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btneklekategori_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}