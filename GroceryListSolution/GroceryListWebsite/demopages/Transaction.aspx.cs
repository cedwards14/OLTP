using GroceryList.Data.Entities;
using GroceryList.Data.POCOs;
using GroceryListSystem.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroceryListWebsite.demopages
{
    public partial class Transaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FetchButton_Click(object sender, EventArgs e)
        {
            int orderid = int.Parse(OrderDDL.SelectedValue);
         
          

            MessageUserControl.TryRun(() =>
            {
                OrderListsController sysmgr = new OrderListsController();
                CustomerController sysmgr2 = new CustomerController();
                List<PickList> results = sysmgr.OrderLists_OrderPickList(orderid);
                Customer result = sysmgr2.Customer_Get(orderid);
                Customername.Text = result.FullName;
                Phonenumber.Text = result.Phone;

                OrderList.DataSource = results;
                OrderList.DataBind();

         
            });



        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            int orderid = int.Parse(OrderDDL.SelectedValue);
            int pickerid = int.Parse(PickerDDL.SelectedValue);
            List<PickList> picklist = new List<PickList>();
            int emptycheck = 0;
            for (int rowindex = 0; rowindex < OrderList.Rows.Count; rowindex++)
            {
                PickList templist = new PickList();
                templist.ProductDescription = (OrderList.Rows[rowindex].FindControl("ProductDescription") as Label).Text;
               templist.QtyOrdered = double.Parse((OrderList.Rows[rowindex].FindControl("QtyOrdered") as Label).Text);
                templist.Comment = (OrderList.Rows[rowindex].FindControl("Comment") as Label).Text;
                templist.Picked = double.Parse((OrderList.Rows[rowindex].FindControl("Picked") as TextBox).Text);
                if(templist.Picked >=1)
                {
                    emptycheck++;
                }
               templist.PickIssue = (OrderList.Rows[rowindex].FindControl("PickIssue") as TextBox).Text;

                picklist.Add(templist);
               
            }

            if (OrderList.Rows.Count == 0)
            {
                MessageUserControl.ShowInfo("Please pick an order");
            }
            else
            {
                if (emptycheck == 0)
                {
                    MessageUserControl.ShowInfo("Please pick the order");
                }
                else
                {
                    MessageUserControl.TryRun(() =>
                    {
                        OrderListsController sysmgr = new OrderListsController();
                        sysmgr.OrderLists_Picking(pickerid, orderid, picklist);

                    }, "Complete", "Your Order has been picked");
                }
            }
         }
   
 

        }
    }
