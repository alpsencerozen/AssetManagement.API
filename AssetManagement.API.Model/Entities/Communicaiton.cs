using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class Communication : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public int PersonnelID { get; set; }
        public int CommTypeID { get; set; }
        public string Description { get; set; }
    }
}
