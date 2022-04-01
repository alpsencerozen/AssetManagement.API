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
    public class AssetGroupController : ControllerBase
    {
        IMapper _mapper;
        IAssetGroupDAL _dal;

        public AssetGroupController(IMapper mapper, IAssetGroupDAL dal)
        {
            _mapper = mapper;
            _dal = dal;
        }

        [HttpGet("")]
        public async Task<IActionResult> GET()
        {
            var data = await _dal.GetAllAsync();
            return Ok(_mapper.Map<List<AssetGroupDTO>>(data));
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
                    return Ok(_mapper.Map<AssetGroupDTO>(data));
                }
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }

        [HttpPost]
        [Route("~/api/add/[controller]")]
        public async Task<IActionResult> POST([FromBody] AssetGroupDTO entry)
        {
            try
            {
                await _dal.AddAsync(_mapper.Map<AssetGroup>(entry));
                return new StatusCodeResult(201);
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }
    }
}
