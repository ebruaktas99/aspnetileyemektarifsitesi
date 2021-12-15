using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public class sqlsinif
    {

        public SqlConnection baglanti() //veritabanına baglanmak için metot
        {
            SqlConnection baglan = new SqlConnection(@"Data Source= DESKTOP-81USL0I\SQLEXPRESS;Initial Catalog= yemektarif;Integrated Security=True");
            baglan.Open();
            return baglan;        }
    }
}