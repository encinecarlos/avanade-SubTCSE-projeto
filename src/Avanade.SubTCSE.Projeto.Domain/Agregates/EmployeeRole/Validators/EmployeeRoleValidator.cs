using FluentValidation;

namespace Avanade.SubTCSE.Projeto.Domain.Agregates.EmployeeRole.Validators
{
    class EmployeeRoleValidator : AbstractValidator<Entities.EmployeeRole>
    {
        public EmployeeRoleValidator()
        {
            RuleSet("new", () =>
            {
                RuleFor(e => e.RoleName)
                .NotEmpty()
                .WithMessage("{PropertyName} can not be empty.");
            });
        }
    }
}
