using Avanade.SubTCSE.Projeto.Domain.Agregates;
using Avanade.SubTCSE.Projeto.Domain.Base.Repository;
using MongoDB.Driver;
using System;
using System.Threading.Tasks;
using MongoDB.Bson;

namespace Avanade.SubTCSE.Projeto.Data.Repositories.Base
{
    public abstract class BaseRepository<TEntity, TId> : IBaseRepository<TEntity, TId> 
        where TEntity : BaseEntity<TId>
    {
        private readonly IMongoCollection<TEntity> _collection;

        public async Task<TEntity> Add(TEntity entity)
        {
            await _collection.InsertOneAsync(entity);

            return entity;
        }

        public async Task<TEntity> FindById(TId id)
        {
            var filter = Builders<TEntity>.Filter.Eq("Id", id);
            return await _collection.Find(filter).SingleAsync();
        }
    }
}
