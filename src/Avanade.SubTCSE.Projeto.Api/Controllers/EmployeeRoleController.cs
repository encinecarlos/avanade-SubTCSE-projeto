using Avanade.SubTCSE.Projeto.Application.Dtos.EmployeeRole;
using Avanade.SubTCSE.Projeto.Application.Services.EmployeeRole;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mime;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Api.Controllers
{    
    [ApiController]
    //[ApiVersion("1", Deprecated = false)]
    //[ApiExplorerSettings(GroupName = "v1")]
    [Route("api/v{version:apiVersion}/[controller]")]
    public class EmployeeRoleController : ControllerBase
    {
        [HttpPost(Name = "EmployeeRole")]
        [Consumes(MediaTypeNames.Application.Json)]
        [Produces("application/json")]
        [ProducesResponseType(typeof(EmployeeRoleDto), StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        public async Task<IActionResult> CreateEmployeeRole([FromBody] EmployeeRoleDto employeeRole)
        {
            var employeeRoleService = new EmployeRoleAppService();
            var item = await employeeRoleService.AddEmployeeRole(employeeRole);

            if (!item.ValidationResult.IsValid)
            {
                return BadRequest(string.Join("\n", item.ValidationResult.Errors));
            }

            return Ok();
        }
    }
}
