using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentB5.ClientPage
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string orderId = GridView1.SelectedRow.Cells[0].Text;
            Response.Redirect(HttpContext.Current.Request.ApplicationPath + "ClientPage/OrderHistory-Details.aspx?orderId=" + orderId);
        }
    }
}