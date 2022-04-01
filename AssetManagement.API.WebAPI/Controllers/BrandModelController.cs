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
    public class BrandModelController : ControllerBase
    {
        IMapper _mapper;
        IBrandModelDAL _dal;

        public BrandModelController(IMapper mapper, IBrandModelDAL dal)
        {
            _mapper = mapper;
            _dal = dal;
        }

        [HttpGet("")]
        public async Task<IActionResult> GET()
        {
            var data = await _dal.GetAllAsync();
            return Ok(_mapper.Map<List<BrandModelDTO>>(data));
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
                    return Ok(_mapper.Map<BrandModelDTO>(data));
                }
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }

        [HttpPost]
        [Route("~/api/add/[controller]")]
        public async Task<IActionResult> POST([FromBody] BrandModelDTO entry)
        {
            try
            {
                await _dal.AddAsync(_mapper.Map<BrandModel>(entry));
                return new StatusCodeResult(201);
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }
    }
}
