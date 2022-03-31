﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.Entities
{
    public class BaseEntity
    {
        public DateTime? CreateDate { get; set; } = DateTime.Now;
        public string? CreatedBy { get; set; }
        public DateTime? ModifiedDate { get; set; } 
        public string? ModifiedBy { get; set; }
        public bool isActive { get; set; } = true;
    }
}
