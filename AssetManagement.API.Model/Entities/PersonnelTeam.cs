using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class PersonnelTeam : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public int? MasterID { get; set; }
        public bool isTeam { get; set; }
        public string Name { get; set; }
        public int CompanyID { get; set; }

    }
}
