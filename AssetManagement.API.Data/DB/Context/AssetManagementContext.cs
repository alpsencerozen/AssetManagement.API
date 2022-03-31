using AssetManagement.API.Core.Repositories;
using AssetManagement.API.Model.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Data.DB.Context
{
    public class AssetManagementContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"data source=.\SQLEXPRESS;initial catalog=AssetManagement;integrated security=True;");
        }

        //Soft delete override
        public override int SaveChanges()
        {
            foreach (var entry in ChangeTracker.Entries())
            {
                var entity = entry.Entity;
                if (entry.State == EntityState.Modified)
                {
                    entity.GetType().GetProperty("ModifiedDate").SetValue(entity, DateTime.Now);
                }
                else if (entry.State == EntityState.Deleted && entity is ISoftDelete)
                {
                    entry.State = EntityState.Modified;

                    entity.GetType().GetProperty("isActive").SetValue(entity, false);
                }
            }

            return base.SaveChanges();
        }

        public DbSet<Asset> Asset { get; set; }
        public DbSet<Currency> Currency { get; set; }
        public DbSet<Unit> Unit { get; set; }

    }
}
