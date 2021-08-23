using Avanade.SubTCSE.Projeto.Domain.Agregates.Employee.Interfaces.Repositories;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Data.Repositories.Employee
{
    public class EmployeeRepository : IEmployeeRepository
    {
        public Task<Domain.Agregates.Employee.Entities.Employee> Add(Domain.Agregates.Employee.Entities.Employee entity)
        {
            throw new System.NotImplementedException();
        }

        public Task<Domain.Agregates.Employee.Entities.Employee> FindById(string id)
        {
            throw new System.NotImplementedException();
        }
    }
}
