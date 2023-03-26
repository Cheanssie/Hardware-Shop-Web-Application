using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentB5.WebForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }
    }
}