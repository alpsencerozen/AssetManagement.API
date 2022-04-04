using AssetManagement.API.Data.DAL.Abstract;
using AssetManagement.API.Model.DTO;
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


    }
}
