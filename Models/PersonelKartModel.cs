using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KartOkuyucu.Models
{
    public class PersonelKartModel
    {
        public int ID { get; set; }
        public string DATE { get; set; }
        public string KIMLIK_ID { get; set; }
        public string TIME { get; set; }
        public string ISIM_SOYISIM { get; set; }

    }
}