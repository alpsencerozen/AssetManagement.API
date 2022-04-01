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
    public class AssetTypeController : ControllerBase
    {
        IMapper _mapper;
        IAssetTypeDAL _dal;

        public AssetTypeController(IMapper mapper, IAssetTypeDAL dal)
        {
            _mapper = mapper;
            _dal = dal;
        }

        [HttpGet("")]
        public async Task<IActionResult> GET()
        {
            var data = await _dal.GetAllAsync();
            return Ok(_mapper.Map<List<AssetTypeDTO>>(data));
        }

        [HttpGet("{ID}")]
        public async Task<IActionResult> GET(int ID)
        {
            try
            {
                var data = await _dal.GetByIdAsync(ID);
                if (data == null)
                {
                    return NotFound($"{ID} e ait veri bulunamadı...");
                }
                else
                {
                    return Ok(_mapper.Map<AssetTypeDTO>(data));
                }
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }

        [HttpPost]
        [Route("~/api/add/[controller]")]
        public async Task<IActionResult> POST([FromBody] AssetTypeDTO entry)
        {
            try
            {
                await _dal.AddAsync(_mapper.Map<AssetType>(entry));
                return new StatusCodeResult(201);
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }

    }
}
