using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class Comment : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public int AssetID { get; set; }
        public int PersonnelID { get; set; }
        public string Note { get; set; }
        public DateTime Date { get; set; }
    }
}
