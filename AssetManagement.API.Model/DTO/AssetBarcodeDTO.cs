using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.DTO
{
    public class AssetBarcodeDTO
    {
        public int ID { get; set; }
        public int AssetID { get; set; }
        public string Barcode { get; set; }
    }
}
