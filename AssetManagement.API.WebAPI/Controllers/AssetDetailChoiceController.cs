using AssetManagement.API.Data.DAL.Abstract;
using AssetManagement.API.Model.DTO;
using AssetManagement.API.Model.Entities;
using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AssetManagement.API.WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AssetDetailChoiceController : ControllerBase
    {
        IMapper _mapper; 
        IUnitDAL _udal;
        IAssetTypeDAL _atdal;
        IAssetGroupDAL _agdal;
        IBrandModelDAL _bmdal;
        ICurrencyDAL _cdal;

        public AssetDetailChoiceController(IMapper mapper, IUnitDAL udal, IAssetTypeDAL atdal, IAssetGroupDAL agdal, IBrandModelDAL bmdal, ICurrencyDAL cdal)
        {
            _mapper = mapper;
            _udal = udal;
            _atdal = atdal;
            _agdal = agdal;
            _bmdal = bmdal;
            _cdal = cdal;
        }

        [HttpGet("")]
        public async Task<IActionResult> GET()
        {
            var choices = new AssetDetailChoicesDTO();

            IEnumerable<Unit> unitList = await _udal.GetAllAsync();
            choices.Unit = _mapper.Map<List<UnitDTO>>(unitList);

            IEnumerable<AssetGroup> assetGroupList = await _agdal.GetAllAsync();
            choices.AssetGroupDesc = _mapper.Map<List<AssetGroupDTO>>(assetGroupList);

            IEnumerable<AssetType> assetTypeList = await _atdal.GetAllAsync();
            choices.AssetTypeDesc = _mapper.Map<List<AssetTypeDTO>>(assetTypeList);

            IEnumerable<BrandModel> brandModelList = await _bmdal.GetAllAsync();
            choices.BrandModel = _mapper.Map<List<BrandModelDTO>>(brandModelList);

            IEnumerable<Currency> CostCurrencyList = await _cdal.GetAllAsync();
            choices.CostCurrency = _mapper.Map<List<CurrencyDTO>>(CostCurrencyList);

            IEnumerable<Currency> PriceCurrencyList = await _cdal.GetAllAsync();
            choices.PriceCurrency = _mapper.Map<List<CurrencyDTO>>(PriceCurrencyList);

            return Ok(choices);
        }


    }
}
