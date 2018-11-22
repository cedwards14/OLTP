using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroceryList.Data.POCOs
{
   public  class PickList
    {
        
        public string ProductDescription { get; set; }

        public double QtyOrdered { get; set; }

        public string Comment { get; set; }

        public double? Picked { get; set; }

        public string PickIssue { get; set; }
    }
}
