using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssetManagement.API.Model.DTO
{
    public class DebitDetailChoiceDTO
    {
        public int AssetID { get; set; }
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
