using AssetManagement.API.Data.DAL.Abstract;
using AssetManagement.API.Data.DB.Context;
using AssetManagement.API.Data.Repositories;
using AssetManagement.API.Model.DTO;
using AssetManagement.API.Model.Entities;
using Microsoft.EntityFrameworkCore.Storage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Data.DAL.Concrete
{
    public class AssetDAL : EntityRepository<Asset, AssetManagementContext>, IAssetDAL
    {

        AssetManagementContext db = new AssetManagementContext();

        public async Task<bool> CreateAsset(AssetDetailChoicesDTO choices)
        {
            Asset addedAsset = new Asset()
            {
                hasBarcode = true,
                CompanyID = 1, //degisecek
                AssetGroupID = choices.AssetGroupID,
                AssetTypeID = choices.AssetTypeID,
                BrandModelID = choices.BrandModelID, //degisecek
                CurrencyID = choices.CostCurrencyID,
                Description = choices.AssetDesc,
                Cost = choices.Cost,
                Guarantee = choices.hasGuarrantee,
                EntryDate = choices.EntryDate
            };

            using (IDbContextTransaction transaction = db.Database.BeginTransaction())
            {
                try
                {
                    await db.Asset.AddAsync(addedAsset);
                    db.SaveChanges();

                    await db.AssetBarcode.AddAsync(new AssetBarcode()
                    {
                        AssetID = addedAsset.ID,
                        Barcode = choices.Barcode,
                        CreateDate = DateTime.Now
                    });
                    db.SaveChanges();

                    await db.tblPrice.AddAsync(new tblPrice()
                    {
                        AssetID = addedAsset.ID,
                        Price = choices.Price,
                        CurrencyID = choices.PriceCurrencyID,
                        Date = DateTime.Now
                    });
                    db.SaveChanges();

                    await db.AssetStatus.AddAsync(new AssetStatus()
                    {
                        AssetID = addedAsset.ID,
                        PersonnelID = 2, //Degisecek
                        StatusID = 1,
                        Date = DateTime.Now,
                        Note = "İlk giriş"
                    });
                    db.SaveChanges();

                    transaction.Commit();
                    return true;
                }
                catch (Exception)
                {

                    transaction.Rollback();
                    return false;
                }
            }
        }

        public List<AssetListDTO> GetAssetList()
        {
            var result =  (from a in db.Asset
                          join ab in db.AssetBarcode on a.ID equals ab.AssetID
                          join at in db.AssetType on a.AssetTypeID equals at.ID
                          join tp in db.tblPrice on a.ID equals tp.AssetID
                          join bm in db.BrandModel on a.BrandModelID equals bm.ID
                          select new AssetListDTO()
                          {
                              ID = a.ID,
                              RegistrationNumber = a.RegistrationNumber,
                              Barcode = ab.Barcode,
                              AssetTypeName = at.Description,
                              Price = tp.Price,
                              Brand = bm.Description,
                              Model = bm.Description
                          }).ToList();

            var resultNoBarcode = (from a in db.Asset
                          join awb in db.AssetWithoutBarcode on a.ID equals awb.AssetID
                          join at in db.AssetType on a.AssetTypeID equals at.ID
                          join tp in db.tblPrice on a.ID equals tp.AssetID
                          join bm in db.BrandModel on a.BrandModelID equals bm.ID
                          select new AssetListDTO()
                          {
                              ID = a.ID,
                              RegistrationNumber = a.RegistrationNumber,
                              Barcode = null,
                              AssetTypeName = at.Description,
                              Price = tp.Price,
                              Brand = bm.Description,
                              Model = bm.Description
                          }).ToList();

            result.AddRange(resultNoBarcode);
            return result;

        }

        public AssetListDTO GetAssetList(int ID)
        {
            var result = (from a in db.Asset
                          join ab in db.AssetBarcode on a.ID equals ab.AssetID
                          join at in db.AssetType on a.AssetTypeID equals at.ID
                          join tp in db.tblPrice on a.ID equals tp.AssetID
                          join bm in db.BrandModel on a.BrandModelID equals bm.ID
                          where a.ID == ID
                          select new AssetListDTO()
                          {
                              ID = a.ID,
                              RegistrationNumber = a.RegistrationNumber,
                              Barcode = ab.Barcode,
                              AssetTypeName = at.Description,
                              Price = tp.Price,
                              Brand = bm.Description,
                              Model = bm.Description
                          }).FirstOrDefault();

            var resultNoBarcode = (from a in db.Asset
                                   join awb in db.AssetWithoutBarcode on a.ID equals awb.AssetID
                                   join at in db.AssetType on a.AssetTypeID equals at.ID
                                   join tp in db.tblPrice on a.ID equals tp.AssetID
                                   join bm in db.BrandModel on a.BrandModelID equals bm.ID
                                   where a.ID == ID
                                   select new AssetListDTO()
                                   {
                                       ID = a.ID,
                                       RegistrationNumber = a.RegistrationNumber,
                                       Barcode = null,
                                       AssetTypeName = at.Description,
                                       Price = tp.Price,
                                       Brand = bm.Description,
                                       Model = bm.Description
                                   }).FirstOrDefault();

            if (result != null)
            {
                return result;
            }
            else
            {
                return resultNoBarcode;
            }
        }
    }
}
