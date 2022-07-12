using AssetManagement.API.Data.DAL.Abstract;
using AssetManagement.API.Data.DB.Context;
using AssetManagement.API.Data.Repositories;
using AssetManagement.API.Model.DTO;
using AssetManagement.API.Model.Entities;
using Microsoft.EntityFrameworkCore;
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
                hasBarcode = choices.hasBarcode,
                CompanyID = 1, //degisecek
                AssetGroupID = choices.AssetGroupID,
                AssetTypeID = choices.AssetTypeID,
                BrandModelID = choices.BrandModelID, //degisecek
                CurrencyID = choices.CostCurrencyID,
                Description = choices.AssetDesc,
                Cost = choices.Cost,
                Guarantee = choices.hasGuarrantee,
                EntryDate = choices.EntryDate,
                CreateDate = DateTime.Now
            };

            using (IDbContextTransaction transaction = db.Database.BeginTransaction())
            {
                try
                {
                    await db.Asset.AddAsync(addedAsset);
                    db.SaveChanges();

                    if (addedAsset.hasBarcode == true)
                    {
                        await db.AssetBarcode.AddAsync(new AssetBarcode()
                        {
                            AssetID = addedAsset.ID,
                            Barcode = choices.Barcode,
                            CreateDate = DateTime.Now
                        });
                        db.SaveChanges();
                    }
                    else if (addedAsset.hasBarcode == false)
                    {
                        await db.AssetWithoutBarcode.AddAsync(new AssetWithoutBarcode()
                        {
                            AssetID = addedAsset.ID,
                            UnitID = choices.UnitID,
                            Quantity = choices.Quantity,
                            CreateDate = DateTime.Now
                        });
                        db.SaveChanges();
                    }

                    await db.tblPrice.AddAsync(new tblPrice()
                    {
                        AssetID = addedAsset.ID,
                        Price = choices.Price,
                        CurrencyID = choices.PriceCurrencyID,
                        Date = DateTime.Now,
                        CreateDate = DateTime.Now
                    });
                    db.SaveChanges();

                    await db.AssetStatus.AddAsync(new AssetStatus()
                    {
                        AssetID = addedAsset.ID,
                        PersonnelID = 2, //Degisecek
                        StatusID = 1,
                        Date = DateTime.Now,
                        CreateDate = DateTime.Now,
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

        public AssetDetailChoicesDTO GetAssetDetailChoicesById(int id)
        {
            var choices = new AssetDetailChoicesDTO();

            choices.ID = id;

            var result = (from a in db.Asset
                          join at in db.AssetType on a.AssetTypeID equals at.ID
                          join ag in db.AssetGroup on a.AssetGroupID equals ag.ID
                          join tp in db.tblPrice on a.ID equals tp.AssetID
                          join bm in db.BrandModel on a.BrandModelID equals bm.ID
                          join ab in db.AssetBarcode on a.ID equals ab.AssetID into abTemp
                          from ab in abTemp.DefaultIfEmpty()
                          join awb in db.AssetWithoutBarcode on a.ID equals awb.AssetID into awbTemp
                          from awb in awbTemp.DefaultIfEmpty()
                          where a.ID == id
                          select new AssetDetailChoicesDTO()
                          {
                              ID = id,
                              hasBarcode = a.hasBarcode.GetValueOrDefault(),
                              AssetDesc = a.Description,
                              AssetTypeID = at.ID,
                              AssetGroupID = ag.ID,
                              Barcode = ab != null ? ab.Barcode : default,
                              BrandModelID = bm.ID,
                              CostCurrencyID = a.CurrencyID,
                              PriceCurrencyID = tp.CurrencyID,
                              Cost = a.Cost,
                              hasGuarrantee = a.Guarantee.GetValueOrDefault(),
                              Price = tp.Price,
                              EntryDate = (DateTime)a.EntryDate,
                              UnitID = awb != null ? awb.UnitID : default,
                              Quantity = awb != null ? awb.Quantity : default
                          }).ToList().LastOrDefault();

            return result;

        }
        //
        public List<AssetListDTO> GetAssetList()
        {
            var brands = db.BrandModel.Where(b => b.isBrand == true);

            var result = (from a in db.Asset
                          join ab in db.AssetBarcode on a.ID equals ab.AssetID
                          join at in db.AssetType on a.AssetTypeID equals at.ID
                          join ag in db.AssetGroup on a.AssetGroupID equals ag.ID
                          join tp in db.tblPrice on a.ID equals tp.AssetID
                          join bm in db.BrandModel on a.BrandModelID equals bm.ID
                          where a.isActive == true
                          select new AssetListDTO()
                          {
                              ID = a.ID,
                              RegistrationNumber = a.RegistrationNumber,
                              Barcode = ab.Barcode,
                              AssetGroupName = ag.Description,
                              AssetTypeName = at.Description,
                              Price = tp.Price,
                              Model = bm.Description,
                              Brand = brands.Where(x => x.ID == bm.MasterID).FirstOrDefault().Description
                          }).ToList().GroupBy(x=>x.ID).Select(x=>x.Last()).OrderBy(x => x.ID).ToList();



            var resultNoBarcode = (from a in db.Asset
                          join awb in db.AssetWithoutBarcode on a.ID equals awb.AssetID
                          join at in db.AssetType on a.AssetTypeID equals at.ID
                          join ag in db.AssetGroup on a.AssetGroupID equals ag.ID
                          join tp in db.tblPrice on a.ID equals tp.AssetID
                          join bm in db.BrandModel on a.BrandModelID equals bm.ID
                          where a.isActive == true
                          select new AssetListDTO()
                          {
                              ID = a.ID,
                              RegistrationNumber = a.RegistrationNumber,
                              Barcode = null,
                              AssetGroupName = ag.Description,
                              AssetTypeName = at.Description,
                              Price = tp.Price,
                              Brand = brands.Where(x => x.ID == bm.MasterID).FirstOrDefault().Description,
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

        public async Task<bool> UpdateAssetAsync(AssetDetailChoicesDTO updated)
        {
            Asset existingAsset = await GetByIdAsync(updated.ID);
            Asset updatedAsset = new Asset()
            {
                ID = updated.ID,
                hasBarcode = existingAsset.hasBarcode,
                RegistrationNumber = existingAsset.RegistrationNumber,
                CompanyID = 1, //degisecek
                AssetGroupID = updated.AssetGroupID,
                AssetTypeID = updated.AssetTypeID,
                BrandModelID = updated.BrandModelID,
                CurrencyID = updated.CostCurrencyID,
                Description = updated.AssetDesc,
                Cost = updated.Cost,
                Guarantee = updated.hasGuarrantee,
                EntryDate = updated.EntryDate,
                CreateDate = existingAsset.CreateDate,
                ModifiedDate = DateTime.Now,
                isActive = true
            };

            using (IDbContextTransaction transaction = db.Database.BeginTransaction())
            {
                try
                {
                    Update(updatedAsset);
                    db.SaveChanges();

                    var oldAssetBarcode = db.AssetBarcode.Where(x => x.AssetID == updatedAsset.ID).OrderBy(x => x.ID).LastOrDefault();

                    if (oldAssetBarcode != null && oldAssetBarcode.Barcode != updated.Barcode)
                    {
                        oldAssetBarcode.Barcode = updated.Barcode;
                        oldAssetBarcode.ModifiedDate = DateTime.Now;
                        db.AssetBarcode.Update(oldAssetBarcode);
                        db.SaveChanges();
                    }

                    var oldAssetWithoutBarcode = db.AssetWithoutBarcode.Where(x => x.AssetID == updatedAsset.ID).OrderBy(x => x.ID).LastOrDefault();

                    if (oldAssetWithoutBarcode != null)
                    {
                        if (oldAssetWithoutBarcode.UnitID != updated.UnitID || oldAssetWithoutBarcode.Quantity != updated.Quantity)
                        {
                            oldAssetWithoutBarcode.UnitID = updated.UnitID;
                            oldAssetWithoutBarcode.Quantity = updated.Quantity;
                            db.AssetWithoutBarcode.Update(oldAssetWithoutBarcode);
                            db.SaveChanges();
                        }
                    }

                    tblPrice lastPrice = db.tblPrice.Where(x => x.AssetID == existingAsset.ID).OrderBy(x=>x.Date).LastOrDefault();

                    if (lastPrice.Price != updated.Price)
                    {
                        db.tblPrice.Add(new tblPrice()
                        {
                            AssetID = updatedAsset.ID,
                            CurrencyID = updated.PriceCurrencyID,
                            Price = updated.Price,
                            Date = DateTime.Now,
                            CreateDate = DateTime.Now
                        });
                        db.SaveChanges();
                    }

                    transaction.Commit();
                    return true;

                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    return false;
                }
            }
        }
    }
}
