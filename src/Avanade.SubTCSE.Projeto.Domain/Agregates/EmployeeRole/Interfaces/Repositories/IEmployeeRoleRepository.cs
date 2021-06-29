using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Agregates.EmployeeRole.Interfaces.Repository
{
    public interface IEmployeeRoleRepository
    {
        Task<Entities.EmployeeRole> AddEmployeeRole(Entities.EmployeeRole employeeRole);
    }
}
