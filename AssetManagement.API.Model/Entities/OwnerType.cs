using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class OwnerType : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public string Description { get; set; }
    }
}
