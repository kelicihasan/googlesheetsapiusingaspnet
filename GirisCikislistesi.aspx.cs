using Google.Apis.Auth.OAuth2;
using Google.Apis.Services;
using Google.Apis.Sheets.v4;
using Google.Apis.Sheets.v4.Data;
using KartOkuyucu.DATA;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KartOkuyucu
{
    public partial class GirisCikislistesi : System.Web.UI.Page
    {
        Repository repository = new Repository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbTarih.Text = String.Format("{0:yyyy/MM/dd}", DateTime.Now).Replace('.', '-');
            }
            ListeGetir();
        }
        public void ListeGetir()
        {
            rptGirisCikis.DataSource = repository.Listele();
            rptGirisCikis.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tarih= String.Format("{0:dd/MM/yyyy}",Convert.ToDateTime(tbTarih.Text));
            rptGirisCikis.DataSource = repository.Listele(tarih);
            rptGirisCikis.DataBind();
        }
    }
}