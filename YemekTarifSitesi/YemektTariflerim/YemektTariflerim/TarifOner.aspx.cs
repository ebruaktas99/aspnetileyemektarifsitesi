using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    
    public partial class TarifOner : System.Web.UI.Page
    {

        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntarifoner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tarifler(TarifAd,TarifMalzeme,Tarifyapilis,TarifResim,TarifSahip,TarifSahipMail)  values  (@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", txttarifadi.Text);
            komut.Parameters.AddWithValue("@t2", txtmalzemeler.Text);
            komut.Parameters.AddWithValue("@t3", txtyapilis.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", txtoneren.Text);
            komut.Parameters.AddWithValue("@t6", txtonerenmail.Text);
            komut.ExecuteNonQuery();  //sorguyu çalışturması için
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır");
        }
    }
}