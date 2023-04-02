using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentB5.WebForm
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if(e.CommandName == "detail")
            {
                Response.Redirect(HttpContext.Current.Request.ApplicationPath + "ClientPage/Product-Details.aspx?prodId="+e.CommandArgument.ToString());
            }
        }
    }
}