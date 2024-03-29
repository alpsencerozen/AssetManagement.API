﻿using AssetManagement.API.Core.Repositories;
using AssetManagement.API.Model.DTO;
using AssetManagement.API.Model.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Data.DAL.Abstract
{
    public interface IBrandModelDAL : IEntityRepository<BrandModel>
    {
        Task<List<BrandModel>> GetModelList(int id);
    }
}
