using Avanade.SubTCSE.Projeto.Domain.Agregates.EmployeeRole.Interfaces.Repository;
using Avanade.SubTCSE.Projeto.Domain.Agregates.EmployeeRole.Interfaces.Services;
using FluentValidation;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Agregates.EmployeeRole.Services
{
    public class EmployeeRoleService : IEmployeeRoleService
    {
        private readonly IValidator<Entities.EmployeeRole> _validator;
        private readonly IEmployeeRoleRepository _employeeRoleRepository;

        public async Task<Entities.EmployeeRole> AddEmployeeRole(Entities.EmployeeRole employeeRole)
        {
            var validated =await _validator.ValidateAsync(employeeRole, opt => {
                opt.IncludeRuleSets("new");
            });

            employeeRole.ValidationResult = validated;

            if (!employeeRole.ValidationResult.IsValid)
            {
                return employeeRole;
            }

            await _employeeRoleRepository.Add(employeeRole);

            return employeeRole;
        }
    }
}
