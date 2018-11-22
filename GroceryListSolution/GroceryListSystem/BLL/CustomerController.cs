using GroceryList.Data.Entities;
using GroceryListSystem.DAL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroceryListSystem.BLL
{
    [DataObject]
    public class CustomerController
    {

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public Customer Customer_Get(int orderid)
        {
            using (var context = new GroceryListContext())
            {
                return context.Orders.Where(x=> x.OrderID == orderid).Select( x => x.Customer).SingleOrDefault();
            }
        }
    }
}
