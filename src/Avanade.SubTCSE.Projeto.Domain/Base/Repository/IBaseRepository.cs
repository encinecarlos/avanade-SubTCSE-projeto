using Avanade.SubTCSE.Projeto.Domain.Agregates;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Base.Repository
{
    public interface IBaseRepository<TEntity, TId> where TId : BaseEntity<TId>
    {
        Task<TEntity> Add(TId entity);

        Task<TEntity> FindById(TId id);
    }
}
