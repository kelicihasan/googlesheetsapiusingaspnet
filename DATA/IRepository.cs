using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KartOkuyucu.DATA
{
    public interface IRepository
    {
        List<Models.KartBilgi> KartBilgiListe();
        List<Models.PersonelModel> PersonelListe();
        List<Models.PersonelKartModel> Listele();
        List<Models.PersonelKartModel> Listele(string tarih);
    }
}