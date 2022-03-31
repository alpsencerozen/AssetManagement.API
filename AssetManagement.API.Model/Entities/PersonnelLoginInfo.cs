using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class PersonnelLoginInfo : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public int PersonelID { get; set; }
        public int LoginInfoID { get; set; }
        public DateTime Date { get; set; }
    }
}
