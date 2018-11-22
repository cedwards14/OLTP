using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


#region Additional Name Spaces
using GroceryListSystem.DAL;
using System.ComponentModel;
using GroceryList.Data.Entities;
using GroceryList.Data.POCOs;
#endregion

namespace GroceryListSystem.BLL
{
    [DataObject]
    public class OrderListsController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<PickList> OrderLists_OrderPickList(int orderid)
        {
            using (var context = new GroceryListContext())
            {
                var results = from x in context.OrderLists
                              where x.OrderID == orderid
                              select new PickList
                              {
                               
                                  ProductDescription = x.Product.Description,
                                  QtyOrdered = x.QtyOrdered,
                                  Comment = x.CustomerComment,
                                  Picked = x.QtyPicked,
                                  PickIssue = x.PickIssue
                              };
                return results.ToList();
            }
        }


        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public void OrderLists_Picking(int pickerid, int orderid, List<PickList>picklist)
        {
            using (var context = new GroceryListContext())
            {
                var exists = (from x in context.Orders
                             where x.OrderID == orderid
                             select x).SingleOrDefault();
                if(exists.PickerID !=null)
                {
                    throw new Exception("Order has been picked already");
                }

                else
                {
                    var results = (from y in context.OrderLists
                                   where y.OrderID == orderid
                                   select y).ToList();

                    exists.PickerID = pickerid;
                    exists.PickedDate = DateTime.Now;
                    double sub = 0;
                    for (int rowindex = 0; rowindex < picklist.Count; rowindex++)
                    {
                        //results[rowindex].QtyPicked = picklist[rowindex].Picked;
                        //results[rowindex].PickIssue = picklist[rowindex].PickIssue;

                        context.Entry(results[rowindex]).Property(y => y.QtyPicked).IsModified = true;
                        context.Entry(results[rowindex]).Property(y => y.PickIssue).IsModified = true;
                        sub += ((double)results[rowindex].Price - (double)results[rowindex].Discount) * (double)picklist[rowindex].Picked;
                    }
                        exists.SubTotal = (decimal)sub;
                    exists.GST = (decimal)sub * (decimal)0.05;
                    context.SaveChanges();
                }

            }
        }

        //edit this to be the controller for the exercise!

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<PickListReport> PickListReport_Get()
        {
            using (var context = new GroceryListContext())
            {
                var results = from x in context.OrderLists
                              select new PickListReport
                              {
                                  FullName = x.Order.Customer.LastName + "," + x.Order.Customer.FirstName,
                                  CustomerID = x.Order.Customer.CustomerID,
                                  OrderDate = x.Order.OrderDate,
                                  OrderID = x.Order.OrderID,
                                  ProductID = x.ProductID,
                                  Description = x.Product.Description,
                                  QtyOrdered = x.QtyOrdered,
                                  QtyPicked = x.QtyPicked,
                                  Price = x.Price,
                                  Discount = x.Discount,
                                  ExtendedCost =x.Price - x.Discount,
                                  CustomerComment = x.CustomerComment
                              };
            return results.ToList();
            }
        }
    }
}
