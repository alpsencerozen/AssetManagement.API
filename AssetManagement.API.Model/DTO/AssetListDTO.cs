using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.DTO
{
    public class AssetListDTO
    {
        public int ID { get; set; }
        public Guid? RegistrationNumber { get; set; }
        public string Barcode { get; set; }
        public string AssetGroupName { get; set; }
        public string AssetTypeName { get; set; }
        public decimal Price { get; set; }
        public string Brand { get; set; }
        public string Model { get; set; }

    }
}
