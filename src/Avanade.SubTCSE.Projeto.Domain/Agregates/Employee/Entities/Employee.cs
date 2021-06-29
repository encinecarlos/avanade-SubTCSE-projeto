using System;

namespace Avanade.SubTCSE.Projeto.Domain.Agregates.Employee.Entities
{
    public record Employee : BaseEntity<string>
    {
        public string FisrtName { get; init; }

        public string SurName { get; init; }

        public DateTime Birthday { get; init; }

        public bool Active { get; init; }

        public decimal Salary { get; init; }

        public EmployeeRole.Entities.EmployeeRole EmployeeRole { get; init; }

        public Employee(
            string fisrtName, 
            string surName, 
            DateTime birthday, 
            bool active, 
            decimal salary, 
            EmployeeRole.Entities.EmployeeRole employeeRole)
        {
            FisrtName = fisrtName;
            SurName = surName;
            Birthday = birthday;
            Active = active;
            Salary = salary;
            EmployeeRole = employeeRole;
        }


    }
}
