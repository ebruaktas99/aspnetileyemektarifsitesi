using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select *From Yemekler where Durum=1", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader(); //komuttan gelen okunacak değerler okur.
            DataList2.DataSource = oku;
            DataList2.DataBind();

        }

       
    }
}