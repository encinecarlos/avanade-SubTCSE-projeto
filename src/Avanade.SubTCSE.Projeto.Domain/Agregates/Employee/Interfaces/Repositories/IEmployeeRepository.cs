using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Agregates.Employee.Interfaces.Repositories
{
    public interface IEmployeeRepository
    {
        Task<Entities.Employee> AddEmployee(Entities.Employee employee);
    }
}
