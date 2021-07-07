using MongoDB.Driver;

namespace Avanade.SubTCSE.Projeto.Domain.Base.Repository.MongoDb
{
    public interface IMongoDbContext
    {
        IMongoCollection<TEntity> GetCollection<TEntity>(string collection);
    }
}
