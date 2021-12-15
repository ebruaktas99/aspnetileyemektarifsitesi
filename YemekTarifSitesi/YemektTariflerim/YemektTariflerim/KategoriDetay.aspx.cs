using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif snf = new sqlsinif();
        string KategoriID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            KategoriID = Request.QueryString["KategoriID"];//kategoriIDye göre yemekleri getir.
            SqlCommand komut = new SqlCommand("Select * From Yemekler where KategoriID=@p1", snf.baglanti());
            komut.Parameters.AddWithValue("@p1", KategoriID);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}