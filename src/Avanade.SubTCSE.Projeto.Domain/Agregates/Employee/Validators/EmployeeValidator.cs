using Avanade.SubTCSE.Projeto.Domain.Agregates.EmployeeRole.Validators;
using FluentValidation;

namespace Avanade.SubTCSE.Projeto.Domain.Agregates.Employee.Validators
{
    public class EmployeeValidator : AbstractValidator<Entities.Employee>
    {
        public EmployeeValidator()
        {
            RuleSet("new", () => {
                RuleFor(e => e.FisrtName).NotEmpty().WithMessage("{PropertyName} can not be empty.");
                RuleFor(e => e.EmployeeRole).SetValidator(new EmployeeRoleValidator());
            });
        }
    }
}
