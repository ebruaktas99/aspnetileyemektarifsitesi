using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemektTariflerim
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        sqlsinif bgl = new sqlsinif(); //sqsinifindan nesne ürettik.
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Kategoriler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku; //datalistin veri kaynağı okuduğu değerler olsun.
            DataList1.DataBind(); //Bu metotla işlemleri dataliste aktar
        
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}