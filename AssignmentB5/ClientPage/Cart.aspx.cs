using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace AssignmentB5.ClientPage
{
    public partial class Cart : System.Web.UI.Page
    {
        int totalItems = 0;
        double totalPrice = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Get the quantity and subtotal for this row
                int quantity = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "quantity"));
                double eachPrice = Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "prodPrice"));

                // Add the quantity and subtotal to the running total
                totalItems += quantity;
                totalPrice += (eachPrice*quantity);
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                // Display the total quantity and subtotal in the footer row
                totalItem.InnerText =totalItems.ToString();
                subtotalDisplay.InnerText = totalPrice.ToString("c");
            }
        }

        
    }
}