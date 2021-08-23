using AutoMapper;
using Avanade.SubTCSE.Projeto.Application.Dtos.EmployeeRole;
using Avanade.SubTCSE.Projeto.Application.Interfaces.EmployeeRole;
using Avanade.SubTCSE.Projeto.Domain.Agregates.EmployeeRole.Interfaces.Services;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Application.Services.EmployeeRole
{
    public class EmployeRoleAppService : IEmployeeRoleAppService
    {
        private readonly IMapper _mapper;
        private readonly IEmployeeRoleService _employeRoleService;

        public async Task<EmployeeRoleDto> AddEmployeeRole(EmployeeRoleDto employeeRole)
        {
            var itemDomain = _mapper.Map<EmployeeRoleDto, Domain.Agregates.EmployeeRole.Entities.EmployeeRole>(employeeRole);

            var item = await _employeRoleService.AddEmployeeRole(itemDomain);

            var itemDto = _mapper.Map<Domain.Agregates.EmployeeRole.Entities.EmployeeRole, EmployeeRoleDto>(item);

            return itemDto;
        }
    }
}
