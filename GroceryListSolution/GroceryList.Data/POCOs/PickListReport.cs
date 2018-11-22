using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroceryList.Data.POCOs
{
    public class PickListReport
    {
        public string FullName { get; set; }
        public int CustomerID { get; set; }
        public DateTime OrderDate { get; set; }
        public int OrderID { get; set; }
        public int ProductID { get; set; }
        public string Description { get; set; }
        public double QtyOrdered { get; set; }
        public double? QtyPicked { get; set; }
        public decimal Price { get; set; }
        public decimal Discount { get; set; }
        public decimal ExtendedCost { get; set; }
        public string CustomerComment { get; set; }


    }
}
