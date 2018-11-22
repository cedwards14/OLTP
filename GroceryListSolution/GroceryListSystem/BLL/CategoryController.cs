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
    public class CategoryController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Category> Catgories_List()
        {
            using (var context = new GroceryListContext())
            {
                return context.Categories.OrderBy(x => x.CategoryID).ToList();
            }
        }


        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public Category Categories_Get(int keyvalue)
        {
            using (var context = new GroceryListContext())
            {
                return context.Categories.Find(keyvalue);
            }
        }


    }
}
