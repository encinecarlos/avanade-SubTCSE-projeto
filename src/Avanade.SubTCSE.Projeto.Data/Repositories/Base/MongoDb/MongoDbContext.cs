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
        private readonly IMongoDatabase Database;

        public MongoDbContext()
        {
            MongoClientSettings mongoClientSettings = MongoClientSettings
                .FromUrl(new MongoUrl(""));

            mongoClientSettings.SslSettings = new SslSettings()
            {
                EnabledSslProtocols = System.Security.Authentication.SslProtocols.Tls12
            };

            MongoClient mongoClient = new MongoClient(mongoClientSettings);

            Database = mongoClient.GetDatabase("");
        }

        public IMongoCollection<TEntity> GetCollection<TEntity>(string collection)
        {
            return Database.GetCollection<TEntity>(collection);
        }
    }
}
