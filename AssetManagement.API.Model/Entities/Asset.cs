using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class Asset : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public bool? hasBarcode { get; set; }
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid? RegistrationNumber { get; set; }
        public int CompanyID { get; set; }
        public int AssetGroupID { get; set; }
        public int AssetTypeID { get; set; }
        public int BrandModelID { get; set; }
        public int CurrencyID { get; set; }
        public string? Description { get; set; }
        public decimal Cost { get; set; }
        public bool? Guarantee { get; set; }
        public DateTime? EntryDate { get; set; }
        public int? RetireReason { get; set; }
        public DateTime? RetireDate { get; set; }
    }
}
