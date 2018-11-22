using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Name Spaces
using GroceryListSystem.DAL;
using System.ComponentModel;
using GroceryList.Data.Entities;
#endregion

namespace GroceryListSystem.BLL
{

    [DataObject]
   public class OrderController
    {
        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<Order> Orders_UnDeliveredList()
        {
            using (var context = new GroceryListContext())
            {
                return context.Orders.Where(x => x.PickerID == null).Select(x => x).ToList();
            }
        }


    }
}
