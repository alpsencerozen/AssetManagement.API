using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class AssetOwner : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public int AssetID { get; set; }
        public int OwnerTypeID { get; set; }
        public int OwnerID { get; set; }
        public int DebitReason { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
    }
}
