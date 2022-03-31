using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class AssetBarcode : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public int AssetID { get; set; }
        public string Barcode { get; set; }
    }
}
