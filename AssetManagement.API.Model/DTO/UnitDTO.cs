using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.DTO
{
    public class UnitDTO
    {
        public int ID { get; set; }
        public string Description { get; set; }
        public bool isActive { get; set; }
    }
}
