using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Agregates.Employee.Interfaces.Services
{
    public interface IEmployeeService
    {
        Task<Entities.Employee> AddEmployee(Entities.Employee employee);
    }
}
