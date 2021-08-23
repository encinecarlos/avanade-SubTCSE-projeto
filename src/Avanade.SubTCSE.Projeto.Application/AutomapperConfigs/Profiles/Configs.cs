using AutoMapper;
using Avanade.SubTCSE.Projeto.Application.AutomapperConfigs.Profiles.Employee;
using Avanade.SubTCSE.Projeto.Application.AutomapperConfigs.Profiles.EmployeeRole;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Application.AutomapperConfigs.Profiles
{
    public static class Configs
    {
        public static MapperConfiguration RegisterMappings() => new MapperConfiguration(cfg => {
            cfg.AllowNullCollections = true;
            cfg.AddProfile<EmployeeRoleProfile>();
            cfg.AddProfile<EmployeeProfile>();
        }); 
    }
}
