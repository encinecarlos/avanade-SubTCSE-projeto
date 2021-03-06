using Avanade.SubTCSE.Projeto.Domain.Base.Repository;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Agregates.EmployeeRole.Interfaces.Repository
{
    public interface IEmployeeRoleRepository : IBaseRepository<Entities.EmployeeRole, string>
    {
    }
}
