using AssetManagement.API.Core.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class Customer : BaseEntity, IEntity
    {
        [Key]
        public int ID { get; set; }
        public string SubscriptionNumber { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
