using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Core.Repositories
{
    public interface IEntityRepository<T> where T : class, IEntity, new()
    {
        //T Get(Expression<Func<T, bool>> filter = null);
        //IQueryable<T> GetAll(Expression<Func<T, bool>> filter = null);
        //void Add(T entity);
        void Update(T Entity);
        void Delete(T Entity);
        void SoftDelete(T Entity);
        //void RemoveRange(IEnumerable<T> Entities);
        Task<T> GetByIdAsync(int id);
        Task<IEnumerable<T>> GetAllAsync();
        Task AddAsync(T Entity);
        Task AddRangeAsync(IEnumerable<T> Entities);
        Task<bool> AnyAsync(Expression<Func<T, bool>> filter = null);
        Task<int> CountAsync(Expression<Func<T, bool>> filter = null);

    }
}
