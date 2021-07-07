using Avanade.SubTCSE.Projeto.Domain.Base.Repository.MongoDb;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Data.Repositories.Base.MongoDb
{
    public class MongoDbContext : IMongoDbContext
    {
        public IMongoCollection<TEntity> GetCollection<TEntity>(string collection)
        {
            throw new NotImplementedException();
        }
    }
}
