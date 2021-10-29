using Google.Apis.Auth.OAuth2;
using Google.Apis.Services;
using Google.Apis.Sheets.v4;
using Google.Apis.Sheets.v4.Data;
using KartOkuyucu.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace KartOkuyucu.DATA
{

    public class Repository : IRepository
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RemoteConnect"].ConnectionString);
        public List<KartBilgi> KartBilgiListe()
        {
            var credential = GoogleCredential.FromStream(new FileStream(HttpContext.Current.Server.MapPath("~/client_secret.json"), FileMode.Open)).CreateScoped(SheetsService.Scope.Spreadsheets);
            var service = new SheetsService(new BaseClientService.Initializer()
            {
                HttpClientInitializer = credential,
                ApplicationName = ApiBilgi.ApplicationName
            });
            String spreadsheetId = ApiBilgi.spreadsheetId;
            String range = ApiBilgi.range;
            SpreadsheetsResource.ValuesResource.GetRequest request =
                                    service.Spreadsheets.Values.Get(spreadsheetId, range);
            ValueRange response = request.Execute();
            IList<IList<Object>> values = response.Values;
            List<Models.KartBilgi> kart = new List<Models.KartBilgi>();
            int i = 0;
            foreach (var item in values)
            {
                kart.Add(new KartBilgi
                {
                    ID = i,
                    DATE = item[0].ToString(),
                    TIME = item[1].ToString(),
                    KIMLIK_ID = item[2].ToString()
                });
                i++;
            }
            return kart;
        }
        public List<PersonelModel> PersonelListe()
        {
            List<PersonelModel> isimler = new List<PersonelModel>();
            if (con.State != ConnectionState.Open) con.Open();
            SqlCommand cmd = new SqlCommand(); cmd.Connection = con;
            cmd.CommandText = "usp_Personel_Hepsi";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                isimler.Add(new PersonelModel
                {
                    KART_ID = dr["KartNo"].ToString(),
                    ISIM_SOYISIM = dr["Ad"].ToString() + " " + dr["Soyad"].ToString()
                });
            }
            con.Close();
            return isimler;
        }
        public List<PersonelKartModel> Listele()
        {
            var listem=
                KartBilgiListe().Join(
                     PersonelListe(),
                     x => x.KIMLIK_ID,
                     y => y.KART_ID, (x, y) =>
                     new PersonelKartModel
                     {
                         DATE = x.DATE, 
                         ID = x.ID, 
                         ISIM_SOYISIM = y.ISIM_SOYISIM, 
                         KIMLIK_ID = x.KIMLIK_ID, 
                         TIME = x.TIME 
                     }).ToList();

            List<PersonelKartModel> personelKartModels = 
                new List<PersonelKartModel>();
            foreach (var item in listem)
            {
                personelKartModels.Add(
                    new PersonelKartModel
                    {
                        DATE = item.DATE,
                        ID = item.ID,
                        ISIM_SOYISIM = item.ISIM_SOYISIM,
                        KIMLIK_ID = item.KIMLIK_ID,
                        TIME = item.TIME
                    });
            }
            return personelKartModels.Skip(1).ToList();
        }
        public List<PersonelKartModel> Listele(string tarih)
        {
            return Listele().Where(x => x.DATE == tarih).ToList();
        }
    }
}