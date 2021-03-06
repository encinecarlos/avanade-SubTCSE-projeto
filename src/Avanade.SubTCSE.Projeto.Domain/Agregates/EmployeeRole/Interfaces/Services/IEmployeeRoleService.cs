using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Agregates.EmployeeRole.Interfaces.Services
{
    public interface IEmployeeRoleService
    {
        Task<Entities.EmployeeRole> AddEmployeeRole(Entities.EmployeeRole employeeRole);
    }
}
