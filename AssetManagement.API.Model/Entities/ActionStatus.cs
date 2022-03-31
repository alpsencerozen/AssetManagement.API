using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class ActionStatus : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public int AssetActionID { get; set; }
        public int StatusID { get; set; }

    }
}
