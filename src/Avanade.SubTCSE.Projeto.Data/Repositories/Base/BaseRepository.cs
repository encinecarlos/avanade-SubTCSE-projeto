using Avanade.SubTCSE.Projeto.Domain.Agregates;
using Avanade.SubTCSE.Projeto.Domain.Base.Repository;
using MongoDB.Driver;
using System;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Data.Repositories.Base
{
    public abstract class BaseRepository<TEntity, TId> : IBaseRepository<TEntity, TId> where TEntity : BaseEntity<TId>
    {
        private readonly IMongoCollection<TEntity> mongoCollection;

        public async Task<TEntity> Add(TEntity entity)
        {
            await mongoCollection.InsertOneAsync(entity);

            return entity;
        }

        public async Task<TEntity> FindById(TId id)
        {
            throw new NotImplementedException();
        }
    }
}
