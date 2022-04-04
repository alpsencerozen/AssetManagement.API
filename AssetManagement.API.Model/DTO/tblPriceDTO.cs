using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.DTO
{
    public class tblPriceDTO
    {
        public int ID { get; set; }
        public int AssetID { get; set; }
        public decimal Price { get; set; }
        public int CurrencyID { get; set; }
        public DateTime Date { get; set; }
    }
}
