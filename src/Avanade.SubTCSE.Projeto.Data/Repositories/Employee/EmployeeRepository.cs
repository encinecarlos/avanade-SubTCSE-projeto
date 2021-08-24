using Avanade.SubTCSE.Projeto.Domain.Agregates.Employee.Interfaces.Repositories;
using System.Threading.Tasks;
using Avanade.SubTCSE.Projeto.Data.Repositories.Base;

namespace Avanade.SubTCSE.Projeto.Data.Repositories.Employee
{
    public class EmployeeRepository : BaseRepository<Domain.Agregates.Employee.Entities.Employee, string>, 
        IEmployeeRepository
    {

    }
}
