using Avanade.SubTCSE.Projeto.Domain.Base.Repository;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Agregates.Employee.Interfaces.Repositories
{
    public interface IEmployeeRepository : IBaseRepository<Entities.Employee, string>
    {
    }
}
