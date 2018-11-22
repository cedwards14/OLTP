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
    public class ProductController
    {

        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<Product> Products_List()
        {
            using (var context = new GroceryListContext())
            {
                return context.Products.OrderBy(x => x.ProductID).ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public Product Products_Get(int keyvalue)
        {
            using (var context = new GroceryListContext())
            {
                return context.Products.Find(keyvalue);
            }
        }

        [DataObjectMethod(DataObjectMethodType.Insert,false)]

        public void Products_Add(Product item)
        {
            using (var context = new GroceryListContext())
            {
                context.Products.Add(item);
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update,false)]
        public void Products_Update(Product item)
        {
            using (var context = new GroceryListContext())
            {
                context.Entry(item).State = System.Data.Entity.EntityState.Modified;
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Delete,false)]
        public void Products_Delete(Product item)
        {
            Products_Delete(item.ProductID);

        }

        public void Products_Delete(int productid)
        {
            using (var context = new GroceryListContext())
            {
                var existing = context.Products.Find(productid);
                if(existing == null)
                {
                    throw new Exception("This Product does not exist");
                }
                context.Products.Remove(existing);
                context.SaveChanges();

            }
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Product> Get_prod_on_Cat(int categoryid)
        {
            using (var context = new GroceryListContext())
            {
                return context.Products.Where(x=>x.CategoryID == categoryid).Select(x=>x).ToList();
            }
        }





    }
}
