using AssetManagement.API.Data.DAL.Abstract;
using AssetManagement.API.Data.DB.Context;
using AssetManagement.API.Data.Repositories;
using AssetManagement.API.Model.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Data.DAL.Concrete
{
    public class BrandModelDAL : EntityRepository<BrandModel, AssetManagementContext>, IBrandModelDAL
    {
    }
}
