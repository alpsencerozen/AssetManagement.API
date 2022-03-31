using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class tblPrice : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public int AssetID { get; set; }
        public decimal Price { get; set; }
        public int CurrencyID { get; set; }
        public DateTime Date { get; set; }

    }
}
