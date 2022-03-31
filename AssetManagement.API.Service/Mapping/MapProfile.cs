using AssetManagement.API.Model.DTO;
using AssetManagement.API.Model.Entities;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Service.Mapping
{
    public class MapProfile : Profile, IMapProfile
    {
        public MapProfile()
        {
            CreateMap<Currency, CurrencyDTO>();
            CreateMap<CurrencyDTO, Currency>();

            CreateMap<Unit, UnitDTO>();
            CreateMap<UnitDTO, Unit>();

        }
    }
}
