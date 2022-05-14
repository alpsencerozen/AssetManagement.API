using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.DTO
{
    public class BrandDTO
    {
        public int ID { get; set; }
        public int? MasterID { get; set; }
        public bool? isBrand { get; set; }
        public string Description { get; set; }
    }
}
