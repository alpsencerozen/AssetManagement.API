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
    public class UnitController : ControllerBase
    {
        IMapper _mapper;
        IUnitDAL _dal;

        public UnitController(IMapper mapper, IUnitDAL dal)
        {
            _mapper = mapper;
            _dal = dal;
        }

        [HttpGet("")]
        public async Task<IActionResult> GET()
        {
            var data = await _dal.GetAllAsync();
            return Ok(_mapper.Map<List<UnitDTO>>(data));
        }

        [HttpGet("{ID}")]
        public async Task <IActionResult> GET(int unitID)
        {
            try
            {
                var data = await _dal.GetByIdAsync(unitID);
                if (data == null)
                {
                    return NotFound($"{unitID} e ait veri bulunamadı...");
                }
                else
                {
                    return Ok(_mapper.Map<Unit>(data));
                }
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }

        [HttpPost]
        [Route("~/api/add/[controller]")]
        public async Task<IActionResult> POST([FromBody]UnitDTO unit)
        {
            try
            {
                await _dal.AddAsync(_mapper.Map<Unit>(unit));
                return new StatusCodeResult(201);
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }

        [HttpPut]
        [Route("~/api/update/[controller]")]
        public IActionResult PUT([FromBody]UnitDTO unit)
        {
            try
            {
                _dal.Update(_mapper.Map<Unit>(unit));
                return new StatusCodeResult(201);
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }

        [HttpPut]
        [Route("softdelete/[controller]/{ID}")]
        public async Task<IActionResult> SOFTDELETE(int unitID)
        {
            try
            {
                var data = await _dal.GetByIdAsync(unitID);
                if (data == null)
                {
                    return NotFound($"{unitID} e ait veri bulunamadı...");
                }
                else
                {
                    var updated = _mapper.Map<Unit>(data);
                    updated.GetType().GetProperty("isActive").SetValue(updated, false);
                    _dal.SoftDelete(updated);
                    return Ok();
                }
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }

        [HttpDelete("delete/[controller]/{ID}")]
        public IActionResult DELETE(int unitID)
        {
            try
            {
                _dal.Delete(new Unit() { ID = unitID });
                return Ok();
            }
            catch (Exception ex)
            {

            }
            return BadRequest();
        }

    }
}
