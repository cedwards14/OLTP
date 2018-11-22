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
    public class PickerController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Picker> Pickers_List()
        {
            using (var context = new GroceryListContext())
            {
                return context.Pickers.OrderBy(x => x.PickerID).ToList();
            }
        }


    }
}
