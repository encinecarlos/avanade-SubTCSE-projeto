using AutoMapper;
using Avanade.SubTCSE.Projeto.Application.Dtos.Employee;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Application.AutomapperConfigs.Profiles.Employee
{
    public class EmployeeProfile : Profile
    {
        public EmployeeProfile()
        {
            CreateMap<EmployeeDto, Domain.Agregates.Employee.Entities.Employee>()
                .ConstructUsing((ctor, res) =>
                {
                    return new Domain.Agregates.Employee.Entities.Employee(
                        ctor.PrimeiroNome,
                        ctor.Sobrenome,
                        ctor.Aniversario,
                        ctor.Ativo,
                        ctor.Salario,
                        res.Mapper.Map<Domain.Agregates.EmployeeRole.Entities.EmployeeRole>(ctor.Cargo));
                }).ForAllOtherMembers(i => i.Ignore());

            //CreateMap<Domain.Agregates.Employee.Entities.Employee, EmployeeDto>()
            //    .ForMember(dest => dest.Identificador, opt => opt.MapFrom(src => src.Id))

            CreateMap<Domain.Agregates.Employee.Entities.Employee, Dtos.Employee.EmployeeDto>()
                .ForMember(dest => dest.Identificador, opt => opt.MapFrom(src => src.Id))
                .ForMember(dest => dest.PrimeiroNome, opt => opt.MapFrom(src => src.FisrtName))
                .ForMember(dest => dest.Sobrenome, opt => opt.MapFrom(src => src.SurName))
                .ForMember(dest => dest.Aniversario, opt => opt.MapFrom(src => src.Birthday))
                .ForMember(dest => dest.Ativo, opt => opt.MapFrom(src => src.Active))
                .ForMember(dest => dest.Salario, opt => opt.MapFrom(src => src.Salary))
                .ForMember(dest => dest.Cargo, opt => opt.MapFrom(src => src.EmployeeRole))
                .ForAllOtherMembers(i => i.Ignore());
        }
    }
}
