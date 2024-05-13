using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataSet1TableAdapters.TBLHAKKIMDATableAdapter dt = new DataSet1TableAdapters.TBLHAKKIMDATableAdapter();
            Repeater1.DataSource = dt.HakkımdaListele();
            Repeater1.DataBind();

            DataSet1TableAdapters.TBLDENEYİMTableAdapter dt2 = new DataSet1TableAdapters.TBLDENEYİMTableAdapter();
            Repeater2.DataSource = dt2.DeneyimListesi();
            Repeater2.DataBind();

            DataSet1TableAdapters.TBLEGITIMTableAdapter dt3 = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            Repeater3.DataSource = dt3.EğitimleriListele();
            Repeater3.DataBind();

            DataSet1TableAdapters.TBLYETENEKTableAdapter dt4 = new DataSet1TableAdapters.TBLYETENEKTableAdapter();
            Repeater6.DataSource = dt4.YetenekleriListele();
            Repeater6.DataBind();

            DataSet1TableAdapters.TBLHOBITableAdapter dt5 = new DataSet1TableAdapters.TBLHOBITableAdapter();
            Repeater4.DataSource = dt5.HobileriListele();
            Repeater4.DataBind();

            DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter dt6 = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();
            Repeater5.DataSource = dt6.SertifikalarıListele();
            Repeater5.DataBind();

            DataSet1TableAdapters.TBLHAKKIMDATableAdapter dt7= new DataSet1TableAdapters.TBLHAKKIMDATableAdapter();
            Repeater7.DataSource = dt7.HakkımdaListele();
            Repeater7.DataBind();   

        }
    }
}

