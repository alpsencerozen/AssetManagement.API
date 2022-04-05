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
    public class AssetController : ControllerBase
    {
        IMapper _mapper;
        IAssetDAL _dal;

        public AssetController(IMapper mapper, IAssetDAL dal)
        {
            _mapper = mapper;
            _dal = dal;
        }

        [HttpGet("")]
        public async Task<IActionResult> GET()
        {
            var data = await _dal.GetAllAsync();
            return Ok(_mapper.Map<List<AssetDTO>>(data));
        }

        [HttpGet("api/getassetbyid")]
        public async Task<IActionResult> GET(int assetID)
        {
            var data = await _dal.GetByIdAsync(assetID);
            return Ok(_mapper.Map<AssetDTO>(data));
        }

        [HttpGet("~/api/getassetlist/[controller]")]
        public IActionResult GetAssetListItems()
        {
            var data = _dal.GetAssetList();
            return Ok(data);
        }

        [HttpGet("~/api/getassetlist/[controller]/{ID}")]
        public IActionResult GetAssetListItems(int assetID)
        {
            try
            {
                var data = _dal.GetAssetList(assetID);
                if (data == null)
                {
                    return NotFound($"{assetID} e ait veri bulunamadı...");
                }
                else
                {
                    return Ok(data);
                }
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }


    }
}
