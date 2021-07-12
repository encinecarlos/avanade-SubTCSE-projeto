using Avanade.SubTCSE.Projeto.Data.Repositories.Base;
using Avanade.SubTCSE.Projeto.Domain.Agregates.EmployeeRole.Interfaces.Repository;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Data.Repositories.EmployeeRole
{
    public class EmployeeRoleRepository : BaseRepository<Domain.Agregates.EmployeeRole.Entities.EmployeeRole, string>, 
        IEmployeeRoleRepository
    {
        
    }
}
