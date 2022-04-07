using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.DTO
{
    class AssetViewDTO
    {
        //regiona al

        public int ID { get; set; }
        public bool hasBarcode { get; set; }
        public string Barcode { get; set; }
        public List<AssetGroupDTO> AssetGroupDesc { get; set; }
        public int AssetGroupID { get; set; }

        public List<AssetTypeDTO> AssetTypeDesc { get; set; }
        public int AssetTypeID { get; set; }

        public List<BrandModelDTO> BrandModel { get; set; }
        public int BrandModelID { get; set; }

        public bool hasGuarrantee { get; set; }
        public DateTime EntryDate { get; set; }

        //for no barcode
        public List<UnitDTO> Unit { get; set; }
        public decimal Quantity { get; set; }

        public decimal Cost { get; set; }
        public List<CurrencyDTO> CostCurrency { get; set; }
        public int CostCurrencyID { get; set; }

        public decimal Price { get; set; }
        public List<CurrencyDTO> PriceCurrency { get; set; }
        public int PriceCurrencyID { get; set; }
        public int CompanyID { get; set; }
        public string AssetDesc { get; set; }

        //kime zimmetlendi
        public int PersonnelID { get; set; }

        public string DebitNote { get; set; }
        public DateTime DebitDate { get; set; }
        public int OwnerTypeID { get; set; }
        public int OwnerID { get; set; }
        public int DebitReason { get; set; }
        public DateTime DebitStartDate { get; set; }
        public DateTime DebitEndDate { get; set; }
    }
}
