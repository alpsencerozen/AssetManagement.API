using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.DTO
{
    public class AssetActionOptionsDTO
    {
        public int ID { get; set; }
        public int? MasterID { get; set; }
        public bool? isTitle { get; set; }
        public string Description { get; set; }
    }
}
