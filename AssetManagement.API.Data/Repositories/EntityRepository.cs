using AssetManagement.API.Core.Repositories;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Data.Repositories
{
    public class EntityRepository<TEntity, Tcontext> : IEntityRepository<TEntity> where TEntity : class, IEntity, new() where Tcontext : DbContext, new()
    {
        public async Task AddAsync(TEntity Entity)
        {
            using (var context = new Tcontext())
            {
                await context.AddAsync(Entity);
                var deger = context.SaveChanges();
            }
        }

        public async Task AddRangeAsync(IEnumerable<TEntity> Entities)
        {
            using (var context = new Tcontext())
            {
                await context.AddRangeAsync(Entities);
                var deger = context.SaveChanges();
            }
        }

        public async Task<bool> AnyAsync(Expression<Func<TEntity, bool>> filter = null)
        {
            using (var context = new Tcontext())
            {
                return await context.Set<TEntity>().AnyAsync(filter);
            }
        }

        public async Task<int> CountAsync(Expression<Func<TEntity, bool>> filter = null)
        {
            using (var context = new Tcontext())
            {
                return await context.Set<TEntity>().CountAsync(filter);
            }
        }

        public void Delete(TEntity Entity)
        {
            using (var context = new Tcontext())
            {
                var added = context.Entry(Entity);
                added.State = EntityState.Deleted;
                var deger = context.SaveChanges();
            }
        }

        public async Task<IEnumerable<TEntity>> GetAllAsync()
        {
            List<TEntity> entities;
            using (var context = new Tcontext())
            {
                entities = await context.Set<TEntity>().ToListAsync();
            }
            return entities;
        }

        public async Task<TEntity> GetByIdAsync(int id)
        {
            using (var context = new Tcontext())
            {
                return await context.Set<TEntity>().FindAsync(id);
            }
        }

        public void Update(TEntity Entity)
        {
            using (var context = new Tcontext())
            {
                var updated = context.Entry(Entity);
                updated.State = EntityState.Modified;
                var deger = context.SaveChanges();
            }
        }
    }



}
