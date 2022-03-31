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

        #region Soft delete, Created Date, Modified Date override
        //public override int SaveChanges()
        //{
        //    foreach (var entry in ChangeTracker.Entries())
        //    {
        //        var entity = entry.Entity;
        //        if (entry.State == EntityState.Modified)
        //        {
        //            entity.GetType().GetProperty("ModifiedDate").SetValue(entity, DateTime.Now);
        //        }
        //        else if (entry.State == EntityState.Deleted && entity is ISoftDelete)
        //        {
        //            entry.State = EntityState.Modified;

        //            entity.GetType().GetProperty("isActive").SetValue(entity, false);
        //        }
        //    }

        //    return base.SaveChanges();
        //} 
        #endregion

        public DbSet<ActionStatus> ActionStatus { get; set; }
        public DbSet<Asset> Asset { get; set; }
        public DbSet<AssetAction> AssetAction { get; set; }
        public DbSet<AssetActionOptions> AssetActionOptions { get; set; }
        public DbSet<AssetBarcode> AssetBarcode { get; set; }
        public DbSet<AssetCustomer> AssetCustomer { get; set; }
        public DbSet<AssetGroup> AssetGroup { get; set; }
        public DbSet<AssetOwner> AssetOwner { get; set; }
        public DbSet<AssetStatus> AssetStatus { get; set; }
        public DbSet<AssetType> AssetType { get; set; }
        public DbSet<AssetWithoutBarcode> AssetWithoutBarcode { get; set; }
        public DbSet<BrandModel> BrandModel { get; set; }
        public DbSet<Comment> Comment { get; set; }
        public DbSet<CommType> CommType { get; set; }
        public DbSet<Communication> Communication { get; set; }
        public DbSet<Company> Company { get; set; }
        public DbSet<Currency> Currency { get; set; }
        public DbSet<Customer> Customer { get; set; }
        public DbSet<Document> Document { get; set; }
        public DbSet<LoginInfo> LoginInfo { get; set; }
        public DbSet<OwnerType> OwnerType { get; set; }
        public DbSet<PersonnelLoginInfo> PersonnelLoginInfo { get; set; }
        public DbSet<PersonnelTeam> PersonnelTeam { get; set; }
        public DbSet<tblPrice> tblPrice { get; set; }
        public DbSet<tblStatus> tblStatus { get; set; }
        public DbSet<Unit> Unit { get; set; }

    }
}
